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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (char*,size_t,char*,double) ; 
 char* FUNC3 (char*,char) ; 

int FUNC4(double value, char *dst, size_t size)
{
	int ret;
	char *start, *end;
	size_t length;

	ret = FUNC2(dst, size, "%.17g", value);
	if (ret < 0)
		return -1;

	length = (size_t)ret;
	if (length >= size)
		return -1;

	FUNC0(dst);

	/* Make sure there's a dot or 'e' in the output. Otherwise
	   a real is converted to an integer when decoding */
	if (FUNC3(dst, '.') == NULL && FUNC3(dst, 'e') == NULL) {
		if (length + 3 >= size) {
			/* No space to append ".0" */
			return -1;
		}
		dst[length] = '.';
		dst[length + 1] = '0';
		dst[length + 2] = '\0';
		length += 2;
	}

	/* Remove leading '+' from positive exponent. Also remove leading
	   zeros from exponents (added by some printf() implementations) */
	start = FUNC3(dst, 'e');
	if (start) {
		start++;
		end = start + 1;

		if (*start == '-')
			start++;

		while (*end == '0')
			end++;

		if (end != start) {
			FUNC1(start, end, length - (size_t)(end - dst));
			length -= (size_t)(end - start);
		}
	}

	return (int)length;
}