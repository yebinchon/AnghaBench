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
 int /*<<< orphan*/  ERRCODE_INVALID_TEXT_REPRESENTATION ; 
 int /*<<< orphan*/  ERROR ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static unsigned
FUNC4(const char *src, unsigned srclen, char *dst)
{
	const char *end = src + srclen;
	char	   *rp = dst;
	int			len = 0;

	while (src < end)
	{
		if (src[0] != '\\')
			*rp++ = *src++;
		else if (src + 3 < end &&
				 (src[1] >= '0' && src[1] <= '3') &&
				 (src[2] >= '0' && src[2] <= '7') &&
				 (src[3] >= '0' && src[3] <= '7'))
		{
			int			val;

			val = FUNC0(src[1]);
			val <<= 3;
			val += FUNC0(src[2]);
			val <<= 3;
			*rp++ = val + FUNC0(src[3]);
			src += 4;
		}
		else if (src + 1 < end &&
				 (src[1] == '\\'))
		{
			*rp++ = '\\';
			src += 2;
		}
		else
		{
			/*
			 * One backslash, not followed by ### valid octal. Should never
			 * get here, since esc_dec_len does same check.
			 */
			FUNC1(ERROR,
					(FUNC2(ERRCODE_INVALID_TEXT_REPRESENTATION),
					 FUNC3("invalid input syntax for type %s", "bytea")));
		}

		len++;
	}

	return len;
}