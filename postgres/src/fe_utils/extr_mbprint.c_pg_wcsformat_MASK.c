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
struct lineptr {unsigned char* ptr; int width; } ;

/* Variables and functions */
 int PG_UTF8 ; 
 int FUNC0 (char const*,int) ; 
 int FUNC1 (char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (unsigned char const*) ; 

void
FUNC6(const unsigned char *pwcs, size_t len, int encoding,
			 struct lineptr *lines, int count)
{
	int			w,
				chlen = 0;
	int			linewidth = 0;
	unsigned char *ptr = lines->ptr;	/* Pointer to data area */

	for (; *pwcs && len > 0; pwcs += chlen)
	{
		chlen = FUNC1((const char *) pwcs, encoding);
		if (len < (size_t) chlen)
			break;
		w = FUNC0((const char *) pwcs, encoding);

		if (chlen == 1)			/* single-byte char */
		{
			if (*pwcs == '\n')	/* Newline */
			{
				*ptr++ = '\0';
				lines->width = linewidth;
				linewidth = 0;
				lines++;
				count--;
				if (count <= 0)
					FUNC2(1);	/* Screwup */

				/* make next line point to remaining memory */
				lines->ptr = ptr;
			}
			else if (*pwcs == '\r') /* Linefeed */
			{
				FUNC4((char *) ptr, "\\r");
				linewidth += 2;
				ptr += 2;
			}
			else if (*pwcs == '\t') /* Tab */
			{
				do
				{
					*ptr++ = ' ';
					linewidth++;
				} while (linewidth % 8 != 0);
			}
			else if (w < 0)		/* Other control char */
			{
				FUNC3((char *) ptr, "\\x%02X", *pwcs);
				linewidth += 4;
				ptr += 4;
			}
			else				/* Output it as-is */
			{
				linewidth += w;
				*ptr++ = *pwcs;
			}
		}
		else if (w < 0)			/* Non-ascii control char */
		{
			if (encoding == PG_UTF8)
				FUNC3((char *) ptr, "\\u%04X", FUNC5(pwcs));
			else
			{
				/*
				 * This case cannot happen in the current code because only
				 * UTF-8 signals multibyte control characters. But we may need
				 * to support it at some stage
				 */
				FUNC3((char *) ptr, "\\u????");
			}
			ptr += 6;
			linewidth += 6;
		}
		else					/* All other chars */
		{
			int			i;

			for (i = 0; i < chlen; i++)
				*ptr++ = pwcs[i];
			linewidth += w;
		}
		len -= chlen;
	}
	lines->width = linewidth;
	*ptr++ = '\0';				/* Terminate formatted string */

	if (count <= 0)
		FUNC2(1);				/* Screwup */

	(lines + 1)->ptr = NULL;	/* terminate line array */
}