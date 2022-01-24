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
struct zone {int z_nrules; char z_format_specifier; int /*<<< orphan*/  z_isdst; int /*<<< orphan*/  z_rule; int /*<<< orphan*/  z_save; int /*<<< orphan*/  z_linenum; int /*<<< orphan*/  z_filename; struct rule* z_rules; } ;
struct rule {int /*<<< orphan*/  r_name; int /*<<< orphan*/  r_filename; int /*<<< orphan*/  r_linenum; } ;
typedef  int ptrdiff_t ;

/* Variables and functions */
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ errors ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int nrules ; 
 int nzones ; 
 int /*<<< orphan*/  FUNC5 (struct rule*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rcomp ; 
 struct rule* rules ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 struct zone* zones ; 

__attribute__((used)) static void
FUNC8(void)
{
	struct zone *zp;
	struct rule *rp;
	ptrdiff_t	i,
				j,
				base,
				out;

	if (nrules != 0)
	{
		FUNC5(rules, nrules, sizeof *rules, rcomp);
		for (i = 0; i < nrules - 1; ++i)
		{
			if (FUNC6(rules[i].r_name,
					   rules[i + 1].r_name) != 0)
				continue;
			if (FUNC6(rules[i].r_filename,
					   rules[i + 1].r_filename) == 0)
				continue;
			FUNC1(rules[i].r_filename, rules[i].r_linenum);
			FUNC7(FUNC0("same rule name in multiple files"));
			FUNC1(rules[i + 1].r_filename, rules[i + 1].r_linenum);
			FUNC7(FUNC0("same rule name in multiple files"));
			for (j = i + 2; j < nrules; ++j)
			{
				if (FUNC6(rules[i].r_name,
						   rules[j].r_name) != 0)
					break;
				if (FUNC6(rules[i].r_filename,
						   rules[j].r_filename) == 0)
					continue;
				if (FUNC6(rules[i + 1].r_filename,
						   rules[j].r_filename) == 0)
					continue;
				break;
			}
			i = j - 1;
		}
	}
	for (i = 0; i < nzones; ++i)
	{
		zp = &zones[i];
		zp->z_rules = NULL;
		zp->z_nrules = 0;
	}
	for (base = 0; base < nrules; base = out)
	{
		rp = &rules[base];
		for (out = base + 1; out < nrules; ++out)
			if (FUNC6(rp->r_name, rules[out].r_name) != 0)
				break;
		for (i = 0; i < nzones; ++i)
		{
			zp = &zones[i];
			if (FUNC6(zp->z_rule, rp->r_name) != 0)
				continue;
			zp->z_rules = rp;
			zp->z_nrules = out - base;
		}
	}
	for (i = 0; i < nzones; ++i)
	{
		zp = &zones[i];
		if (zp->z_nrules == 0)
		{
			/*
			 * Maybe we have a local standard time offset.
			 */
			FUNC1(zp->z_filename, zp->z_linenum);
			zp->z_save = FUNC4(zp->z_rule, &zp->z_isdst);

			/*
			 * Note, though, that if there's no rule, a '%s' in the format is
			 * a bad thing.
			 */
			if (zp->z_format_specifier == 's')
				FUNC2("%s", FUNC0("%s in ruleless zone"));
		}
	}
	if (errors)
		FUNC3(EXIT_FAILURE);
}