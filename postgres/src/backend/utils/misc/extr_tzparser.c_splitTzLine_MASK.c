#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int lineno; char const* filename; int is_dst; int /*<<< orphan*/  offset; int /*<<< orphan*/ * zone; void* abbrev; } ;
typedef  TYPE_1__ tzEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 
 int /*<<< orphan*/  WHITESPACE ; 
 scalar_t__ FUNC1 (unsigned char) ; 
 scalar_t__ FUNC2 (char*,char*) ; 
 void* FUNC3 (char*) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char**,int) ; 

__attribute__((used)) static bool
FUNC6(const char *filename, int lineno, char *line, tzEntry *tzentry)
{
	char	   *abbrev;
	char	   *offset;
	char	   *offset_endptr;
	char	   *remain;
	char	   *is_dst;

	tzentry->lineno = lineno;
	tzentry->filename = filename;

	abbrev = FUNC4(line, WHITESPACE);
	if (!abbrev)
	{
		FUNC0("missing time zone abbreviation in time zone file \"%s\", line %d",
						 filename, lineno);
		return false;
	}
	tzentry->abbrev = FUNC3(abbrev);

	offset = FUNC4(NULL, WHITESPACE);
	if (!offset)
	{
		FUNC0("missing time zone offset in time zone file \"%s\", line %d",
						 filename, lineno);
		return false;
	}

	/* We assume zone names don't begin with a digit or sign */
	if (FUNC1((unsigned char) *offset) || *offset == '+' || *offset == '-')
	{
		tzentry->zone = NULL;
		tzentry->offset = FUNC5(offset, &offset_endptr, 10);
		if (offset_endptr == offset || *offset_endptr != '\0')
		{
			FUNC0("invalid number for time zone offset in time zone file \"%s\", line %d",
							 filename, lineno);
			return false;
		}

		is_dst = FUNC4(NULL, WHITESPACE);
		if (is_dst && FUNC2(is_dst, "D") == 0)
		{
			tzentry->is_dst = true;
			remain = FUNC4(NULL, WHITESPACE);
		}
		else
		{
			/* there was no 'D' dst specifier */
			tzentry->is_dst = false;
			remain = is_dst;
		}
	}
	else
	{
		/*
		 * Assume entry is a zone name.  We do not try to validate it by
		 * looking up the zone, because that would force loading of a lot of
		 * zones that probably will never be used in the current session.
		 */
		tzentry->zone = FUNC3(offset);
		tzentry->offset = 0;
		tzentry->is_dst = false;
		remain = FUNC4(NULL, WHITESPACE);
	}

	if (!remain)				/* no more non-whitespace chars */
		return true;

	if (remain[0] != '#')		/* must be a comment */
	{
		FUNC0("invalid syntax in time zone file \"%s\", line %d",
						 filename, lineno);
		return false;
	}
	return true;
}