#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* delim; char* quote; char* escape; char* null_print; int /*<<< orphan*/  file_encoding; scalar_t__ encoding_embeds_ascii; scalar_t__ need_transcoding; } ;
typedef  TYPE_1__* CopyState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8(CopyState cstate, char *string,
					bool use_quote, bool single_attr)
{
	char	   *ptr;
	char	   *start;
	char		c;
	char		delimc = cstate->delim[0];
	char		quotec = cstate->quote[0];
	char		escapec = cstate->escape[0];

	/* force quoting if it matches null_print (before conversion!) */
	if (!use_quote && FUNC6(string, cstate->null_print) == 0)
		use_quote = true;

	if (cstate->need_transcoding)
		ptr = FUNC5(string, FUNC7(string), cstate->file_encoding);
	else
		ptr = string;

	/*
	 * Make a preliminary pass to discover if it needs quoting
	 */
	if (!use_quote)
	{
		/*
		 * Because '\.' can be a data value, quote it if it appears alone on a
		 * line so it is not interpreted as the end-of-data marker.
		 */
		if (single_attr && FUNC6(ptr, "\\.") == 0)
			use_quote = true;
		else
		{
			char	   *tptr = ptr;

			while ((c = *tptr) != '\0')
			{
				if (c == delimc || c == quotec || c == '\n' || c == '\r')
				{
					use_quote = true;
					break;
				}
				if (FUNC3(c) && cstate->encoding_embeds_ascii)
					tptr += FUNC4(cstate->file_encoding, tptr);
				else
					tptr++;
			}
		}
	}

	if (use_quote)
	{
		FUNC0(cstate, quotec);

		/*
		 * We adopt the same optimization strategy as in CopyAttributeOutText
		 */
		start = ptr;
		while ((c = *ptr) != '\0')
		{
			if (c == quotec || c == escapec)
			{
				FUNC2();
				FUNC0(cstate, escapec);
				start = ptr;	/* we include char in next run */
			}
			if (FUNC3(c) && cstate->encoding_embeds_ascii)
				ptr += FUNC4(cstate->file_encoding, ptr);
			else
				ptr++;
		}
		FUNC2();

		FUNC0(cstate, quotec);
	}
	else
	{
		/* If it doesn't need quoting, we can just dump it as-is */
		FUNC1(cstate, ptr);
	}
}