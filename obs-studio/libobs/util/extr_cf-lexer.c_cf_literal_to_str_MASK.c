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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char**,char const**) ; 
 size_t FUNC2 (char const*) ; 

char *FUNC3(const char *literal, size_t count)
{
	const char *temp_src;
	char *str, *temp_dst;

	if (!count)
		count = FUNC2(literal);

	if (count < 2)
		return NULL;
	if (literal[0] != literal[count - 1])
		return NULL;
	if (literal[0] != '\"' && literal[0] != '\'')
		return NULL;

	/* strip leading and trailing quote characters */
	str = FUNC0(--count);
	temp_src = literal + 1;
	temp_dst = str;

	while (*temp_src && --count > 0) {
		if (*temp_src == '\\') {
			temp_src++;
			FUNC1(&temp_dst, &temp_src);
		} else {
			*(temp_dst++) = *(temp_src++);
		}
	}

	*temp_dst = 0;
	return str;
}