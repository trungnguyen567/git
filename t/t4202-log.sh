804a787 sixth
394ef78 fifth
5d31159 fourth
2fbe8c0 third
f7dab8e second
3a2fdcb initial
804a787 sixth
394ef78 fifth
5d31159 fourth
	git log --no-walk --oneline 5d31159 804a787 394ef78 > actual &&
	git log --no-walk=sorted --oneline 5d31159 804a787 394ef78 > actual &&
=== 804a787 sixth
=== 394ef78 fifth
=== 5d31159 fourth
	git log --line-prefix="=== " --no-walk --oneline 5d31159 804a787 394ef78 > actual &&
5d31159 fourth
804a787 sixth
394ef78 fifth
	git log --no-walk=unsorted --oneline 5d31159 804a787 394ef78 > actual &&
	git show --oneline -s 5d31159 804a787 394ef78 > actual &&
	>expect &&
	test_cmp expect actual
test_expect_success 'log with various grep.patternType configurations & command-lines' '
	git log --graph --pretty=tformat:%s >actual &&
	test_cmp expect actual
	git log --graph --line-prefix="123 " --pretty=tformat:%s >actual &&
	test_cmp expect actual
	git log --graph --date-order --pretty=tformat:%s |
		sed "s/ *\$//" >actual &&
	test_cmp expect actual
	git log --line-prefix="| | | " --graph --date-order --pretty=tformat:%s |
		sed "s/ *\$//" >actual &&
	test_cmp expect actual
	git log --color=always --graph --date-order --pretty=tformat:%s |
		test_decode_color | sed "s/ *\$//" >actual &&
	test_cmp expect.colors actual
* | third
	git log --graph --date-order --pretty=tformat:%s |
		sed "s/ *\$//" >actual &&
	test_cmp expect actual
| | index 0000000..10c9591
| | |   index 0000000..d5fcad0
| |   index 0000000..11ee015
|   index 0000000..9744ffc
| | | | index 0000000..7898192
| | | |   index 0000000..0cfbf08
| | | | index 0000000..d00491f
| | | | index 0000000..9a33383
| | |   index 9245af5..0000000
| | | index 0000000..9245af5
| |   index 0000000..9d7e69f
|   index 0000000..9d7e69f
|   index 9d7e69f..0000000
| index 5626abf..9d7e69f 100644