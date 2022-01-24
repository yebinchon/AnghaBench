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
struct TYPE_3__ {int /*<<< orphan*/  r_loyear; void* r_linenum; void* r_filename; } ;
struct zone {char* z_format; char z_format_specifier; scalar_t__ z_untiltime; TYPE_1__ z_untilrule; void* z_rule; int /*<<< orphan*/  z_stdoff; void* z_linenum; void* z_filename; int /*<<< orphan*/ * z_name; } ;

/* Variables and functions */
 int ZFC_FORMAT ; 
 int ZFC_RULE ; 
 int ZFC_STDOFF ; 
 int ZFC_TILDAY ; 
 int ZFC_TILMONTH ; 
 int ZFC_TILTIME ; 
 int ZFC_TILYEAR ; 
 int ZF_FORMAT ; 
 size_t ZF_NAME ; 
 int ZF_RULE ; 
 int ZF_STDOFF ; 
 int ZF_TILDAY ; 
 int ZF_TILMONTH ; 
 int ZF_TILTIME ; 
 int ZF_TILYEAR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* filename ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 struct zone* FUNC4 (struct zone*,int,int,int /*<<< orphan*/ *) ; 
 void* linenum ; 
 scalar_t__ max_format_len ; 
 scalar_t__ max_time ; 
 scalar_t__ min_time ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ noise ; 
 int nzones ; 
 int /*<<< orphan*/  nzones_alloc ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,char*,char*,char*,char*,char*) ; 
 char* FUNC8 (char*,char) ; 
 scalar_t__ FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 struct zone* zones ; 

__attribute__((used)) static bool
FUNC11(char **fields, int nfields, bool iscont)
{
	char	   *cp;
	char	   *cp1;
	static struct zone z;
	int			i_stdoff,
				i_rule,
				i_format;
	int			i_untilyear,
				i_untilmonth;
	int			i_untilday,
				i_untiltime;
	bool		hasuntil;

	if (iscont)
	{
		i_stdoff = ZFC_STDOFF;
		i_rule = ZFC_RULE;
		i_format = ZFC_FORMAT;
		i_untilyear = ZFC_TILYEAR;
		i_untilmonth = ZFC_TILMONTH;
		i_untilday = ZFC_TILDAY;
		i_untiltime = ZFC_TILTIME;
		z.z_name = NULL;
	}
	else if (!FUNC5(fields[ZF_NAME]))
		return false;
	else
	{
		i_stdoff = ZF_STDOFF;
		i_rule = ZF_RULE;
		i_format = ZF_FORMAT;
		i_untilyear = ZF_TILYEAR;
		i_untilmonth = ZF_TILMONTH;
		i_untilday = ZF_TILDAY;
		i_untiltime = ZF_TILTIME;
		z.z_name = FUNC1(fields[ZF_NAME]);
	}
	z.z_filename = filename;
	z.z_linenum = linenum;
	z.z_stdoff = FUNC3(fields[i_stdoff], FUNC0("invalid UT offset"));
	if ((cp = FUNC8(fields[i_format], '%')) != NULL)
	{
		if ((*++cp != 's' && *cp != 'z') || FUNC8(cp, '%')
			|| FUNC8(fields[i_format], '/'))
		{
			FUNC2(FUNC0("invalid abbreviation format"));
			return false;
		}
	}
	z.z_rule = FUNC1(fields[i_rule]);
	z.z_format = cp1 = FUNC1(fields[i_format]);
	z.z_format_specifier = cp ? *cp : '\0';
	if (z.z_format_specifier == 'z')
	{
		if (noise)
			FUNC10(FUNC0("format '%s' not handled by pre-2015 versions of zic"),
					z.z_format);
		cp1[cp - fields[i_format]] = 's';
	}
	if (max_format_len < FUNC9(z.z_format))
		max_format_len = FUNC9(z.z_format);
	hasuntil = nfields > i_untilyear;
	if (hasuntil)
	{
		z.z_untilrule.r_filename = filename;
		z.z_untilrule.r_linenum = linenum;
		FUNC7(&z.z_untilrule,
				fields[i_untilyear],
				"only",
				"",
				(nfields > i_untilmonth) ?
				fields[i_untilmonth] : "Jan",
				(nfields > i_untilday) ? fields[i_untilday] : "1",
				(nfields > i_untiltime) ? fields[i_untiltime] : "0");
		z.z_untiltime = FUNC6(&z.z_untilrule,
								z.z_untilrule.r_loyear);
		if (iscont && nzones > 0 &&
			z.z_untiltime > min_time &&
			z.z_untiltime < max_time &&
			zones[nzones - 1].z_untiltime > min_time &&
			zones[nzones - 1].z_untiltime < max_time &&
			zones[nzones - 1].z_untiltime >= z.z_untiltime)
		{
			FUNC2(FUNC0("Zone continuation line end time is not after end time of previous line"));
			return false;
		}
	}
	zones = FUNC4(zones, sizeof *zones, nzones, &nzones_alloc);
	zones[nzones++] = z;

	/*
	 * If there was an UNTIL field on this line, there's more information
	 * about the zone on the next line.
	 */
	return hasuntil;
}