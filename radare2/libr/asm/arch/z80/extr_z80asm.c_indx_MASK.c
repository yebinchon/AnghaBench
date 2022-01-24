#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int comma ; 
 char* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (unsigned char const) ; 
 char mem_delimiter ; 
 int /*<<< orphan*/  FUNC3 (char const**) ; 
 int /*<<< orphan*/  FUNC4 (char const**,char,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sp ; 

__attribute__((used)) static int FUNC5(const char **ptr, const char **list, int error, const char **expr) {
	int i;
	*ptr = FUNC0 (*ptr);
	if (!**ptr) {
		if (error) {
			FUNC1 ("unexpected end of line\n");
			return 0;
		} else {
			return 0;
		}
	}
	if (comma > 1) {
		FUNC3 (ptr);
	}
	for (i = 0; list[i]; i++) {
		const char *input = *ptr;
		const char *check = list[i];
		int had_expr = 0;
		if (!list[i][0]) {
			continue;
		}
		while (*check) {
			if (*check == ' ') {
				input = FUNC0 (input);
			} else if (*check == '*') {
				*expr = input;
				mem_delimiter = check[1];
				FUNC4 (&input, mem_delimiter, NULL, sp, 0);
				had_expr = 1;
			} else if (*check == '+') {
				if (*input == '+' || *input == '-') {
					*expr = input;
					mem_delimiter = check[1];
					FUNC4 (&input, mem_delimiter, NULL, sp, 0);
				}
			} else if (*check == *input || (*check >= 'a' && *check <= 'z'
							&& *check - 'a' + 'A' == *input)) {
				++input;
			} else {
				break;
			}

			++check;
		}
		if (*check || (FUNC2 ((const unsigned char) check[-1]) && FUNC2 ((const unsigned char) input[0]))) {
			continue;
		}
		if (had_expr) {
			input = FUNC0 (input);
			if (*input && *input != ',') {
				continue;
			}
		}
		*ptr = input;
		comma++;
		return i + 1;
	}
	// if (error) eprintf ("parse error. Remainder of line=%s\n", *ptr);
	return 0;
}