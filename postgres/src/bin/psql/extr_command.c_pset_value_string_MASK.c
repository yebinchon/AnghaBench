#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* separator; int separator_zero; } ;
struct TYPE_5__ {char* separator; int separator_zero; } ;
struct TYPE_8__ {char* csvFieldSep; int expanded; int default_footer; int numericLocale; char* tableAttr; int tuples_only; int /*<<< orphan*/  unicode_header_linestyle; int /*<<< orphan*/  unicode_column_linestyle; int /*<<< orphan*/  unicode_border_linestyle; TYPE_2__ recordSep; int /*<<< orphan*/  pager_min_lines; int /*<<< orphan*/  pager; int /*<<< orphan*/  format; TYPE_1__ fieldSep; int /*<<< orphan*/  columns; int /*<<< orphan*/  border; } ;
struct printQueryOpt {char* nullPrint; char* title; TYPE_4__ topt; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (TYPE_4__*) ; 
 char* FUNC4 (int) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static char *
FUNC9(const char *param, struct printQueryOpt *popt)
{
	FUNC0(param != NULL);

	if (FUNC8(param, "border") == 0)
		return FUNC6("%d", popt->topt.border);
	else if (FUNC8(param, "columns") == 0)
		return FUNC6("%d", popt->topt.columns);
	else if (FUNC8(param, "csv_fieldsep") == 0)
		return FUNC5(popt->topt.csvFieldSep);
	else if (FUNC8(param, "expanded") == 0)
		return FUNC7(popt->topt.expanded == 2
					   ? "auto"
					   : FUNC4(popt->topt.expanded));
	else if (FUNC8(param, "fieldsep") == 0)
		return FUNC5(popt->topt.fieldSep.separator
								  ? popt->topt.fieldSep.separator
								  : "");
	else if (FUNC8(param, "fieldsep_zero") == 0)
		return FUNC7(FUNC4(popt->topt.fieldSep.separator_zero));
	else if (FUNC8(param, "footer") == 0)
		return FUNC7(FUNC4(popt->topt.default_footer));
	else if (FUNC8(param, "format") == 0)
		return FUNC6("%s", FUNC1(popt->topt.format));
	else if (FUNC8(param, "linestyle") == 0)
		return FUNC6("%s", FUNC3(&popt->topt)->name);
	else if (FUNC8(param, "null") == 0)
		return FUNC5(popt->nullPrint
								  ? popt->nullPrint
								  : "");
	else if (FUNC8(param, "numericlocale") == 0)
		return FUNC7(FUNC4(popt->topt.numericLocale));
	else if (FUNC8(param, "pager") == 0)
		return FUNC6("%d", popt->topt.pager);
	else if (FUNC8(param, "pager_min_lines") == 0)
		return FUNC6("%d", popt->topt.pager_min_lines);
	else if (FUNC8(param, "recordsep") == 0)
		return FUNC5(popt->topt.recordSep.separator
								  ? popt->topt.recordSep.separator
								  : "");
	else if (FUNC8(param, "recordsep_zero") == 0)
		return FUNC7(FUNC4(popt->topt.recordSep.separator_zero));
	else if (FUNC8(param, "tableattr") == 0)
		return popt->topt.tableAttr ? FUNC5(popt->topt.tableAttr) : FUNC7("");
	else if (FUNC8(param, "title") == 0)
		return popt->title ? FUNC5(popt->title) : FUNC7("");
	else if (FUNC8(param, "tuples_only") == 0)
		return FUNC7(FUNC4(popt->topt.tuples_only));
	else if (FUNC8(param, "unicode_border_linestyle") == 0)
		return FUNC7(FUNC2(popt->topt.unicode_border_linestyle));
	else if (FUNC8(param, "unicode_column_linestyle") == 0)
		return FUNC7(FUNC2(popt->topt.unicode_column_linestyle));
	else if (FUNC8(param, "unicode_header_linestyle") == 0)
		return FUNC7(FUNC2(popt->topt.unicode_header_linestyle));
	else
		return FUNC7("ERROR");
}