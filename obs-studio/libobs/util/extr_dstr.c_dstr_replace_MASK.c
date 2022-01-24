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
struct dstr {char* array; scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,scalar_t__) ; 
 scalar_t__ FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 size_t FUNC5 (char const*) ; 
 char* FUNC6 (char*,char const*) ; 

void FUNC7(struct dstr *str, const char *find, const char *replace)
{
	size_t find_len, replace_len;
	char *temp;

	if (FUNC1(str))
		return;

	if (!replace)
		replace = "";

	find_len = FUNC5(find);
	replace_len = FUNC5(replace);
	temp = str->array;

	if (replace_len < find_len) {
		unsigned long count = 0;

		while ((temp = FUNC6(temp, find)) != NULL) {
			char *end = temp + find_len;
			size_t end_len = FUNC5(end);

			if (end_len) {
				FUNC3(temp + replace_len, end, end_len + 1);
				if (replace_len)
					FUNC2(temp, replace, replace_len);
			} else {
				FUNC4(temp, replace);
			}

			temp += replace_len;
			++count;
		}

		if (count)
			str->len += (replace_len - find_len) * count;

	} else if (replace_len > find_len) {
		unsigned long count = 0;

		while ((temp = FUNC6(temp, find)) != NULL) {
			temp += find_len;
			++count;
		}

		if (!count)
			return;

		str->len += (replace_len - find_len) * count;
		FUNC0(str, str->len + 1);
		temp = str->array;

		while ((temp = FUNC6(temp, find)) != NULL) {
			char *end = temp + find_len;
			size_t end_len = FUNC5(end);

			if (end_len) {
				FUNC3(temp + replace_len, end, end_len + 1);
				FUNC2(temp, replace, replace_len);
			} else {
				FUNC4(temp, replace);
			}

			temp += replace_len;
		}

	} else {
		while ((temp = FUNC6(temp, find)) != NULL) {
			FUNC2(temp, replace, replace_len);
			temp += replace_len;
		}
	}
}