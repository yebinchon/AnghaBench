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
typedef  int uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
 int* b64lookup ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

__attribute__((used)) static unsigned
FUNC4(const char *src, unsigned len, char *dst)
{
	const char *srcend = src + len,
			   *s = src;
	char	   *p = dst;
	char		c;
	int			b = 0;
	uint32		buf = 0;
	int			pos = 0,
				end = 0;

	while (s < srcend)
	{
		c = *s++;

		if (c == ' ' || c == '\t' || c == '\n' || c == '\r')
			continue;

		if (c == '=')
		{
			/* end sequence */
			if (!end)
			{
				if (pos == 2)
					end = 1;
				else if (pos == 3)
					end = 2;
				else
					FUNC0(ERROR,
							(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC3("unexpected \"=\" while decoding base64 sequence")));
			}
			b = 0;
		}
		else
		{
			b = -1;
			if (c > 0 && c < 127)
				b = b64lookup[(unsigned char) c];
			if (b < 0)
				FUNC0(ERROR,
						(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
						 FUNC3("invalid symbol \"%c\" while decoding base64 sequence", (int) c)));
		}
		/* add it to buffer */
		buf = (buf << 6) + b;
		pos++;
		if (pos == 4)
		{
			*p++ = (buf >> 16) & 255;
			if (end == 0 || end > 1)
				*p++ = (buf >> 8) & 255;
			if (end == 0 || end > 2)
				*p++ = buf & 255;
			buf = 0;
			pos = 0;
		}
	}

	if (pos != 0)
		FUNC0(ERROR,
				(FUNC1(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC3("invalid base64 end sequence"),
				 FUNC2("Input data is missing padding, is truncated, or is otherwise corrupted.")));

	return p - dst;
}