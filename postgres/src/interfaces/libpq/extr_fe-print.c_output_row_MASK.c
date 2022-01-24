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
struct TYPE_3__ {char* fieldSep; scalar_t__ standard; scalar_t__ html3; } ;
typedef  TYPE_1__ PQprintOpt ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(FILE *fout, const PQprintOpt *po, const int nFields, char **fields,
		   unsigned char *fieldNotNum, int *fieldMax, char *border,
		   const int row_index)
{
	int			field_index;	/* for loop index */

	if (po->html3)
		FUNC2("<tr>", fout);
	else if (po->standard)
		FUNC2(po->fieldSep, fout);
	for (field_index = 0; field_index < nFields; field_index++)
	{
		char	   *p = fields[row_index * nFields + field_index];

		if (po->html3)
			FUNC0(fout, "<td align=\"%s\">%s</td>",
					fieldNotNum[field_index] ? "left" : "right", p ? p : "");
		else
		{
			FUNC0(fout,
					fieldNotNum[field_index] ?
					(po->standard ? " %-*s " : "%-*s") :
					(po->standard ? " %*s " : "%*s"),
					fieldMax[field_index],
					p ? p : "");
			if (po->standard || field_index + 1 < nFields)
				FUNC2(po->fieldSep, fout);
		}
		if (p)
			FUNC3(p);
	}
	if (po->html3)
		FUNC2("</tr>", fout);
	else if (po->standard)
		FUNC0(fout, "\n%s", border);
	FUNC1('\n', fout);
}