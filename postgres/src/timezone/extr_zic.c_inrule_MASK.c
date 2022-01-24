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
struct rule {void* r_abbrvar; void* r_name; int /*<<< orphan*/  r_isdst; int /*<<< orphan*/  r_save; int /*<<< orphan*/  r_linenum; int /*<<< orphan*/  r_filename; } ;

/* Variables and functions */
 size_t RF_ABBRVAR ; 
 size_t RF_COMMAND ; 
 size_t RF_DAY ; 
 size_t RF_HIYEAR ; 
 size_t RF_LOYEAR ; 
 size_t RF_MONTH ; 
 size_t RF_NAME ; 
 size_t RF_SAVE ; 
 size_t RF_TOD ; 
 int RULE_FIELDS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  filename ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 struct rule* FUNC4 (struct rule*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  linenum ; 
 scalar_t__ max_abbrvar_len ; 
 int /*<<< orphan*/  nrules ; 
 int /*<<< orphan*/  nrules_alloc ; 
 struct rule* rules ; 
 int /*<<< orphan*/  FUNC5 (struct rule*,char*,char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC6 (void*) ; 

__attribute__((used)) static void
FUNC7(char **fields, int nfields)
{
	static struct rule r;

	if (nfields != RULE_FIELDS)
	{
		FUNC2(FUNC0("wrong number of fields on Rule line"));
		return;
	}
	switch (*fields[RF_NAME])
	{
		case '\0':
		case ' ':
		case '\f':
		case '\n':
		case '\r':
		case '\t':
		case '\v':
		case '+':
		case '-':
		case '0':
		case '1':
		case '2':
		case '3':
		case '4':
		case '5':
		case '6':
		case '7':
		case '8':
		case '9':
			FUNC2(FUNC0("Invalid rule name \"%s\""), fields[RF_NAME]);
			return;
	}
	r.r_filename = filename;
	r.r_linenum = linenum;
	r.r_save = FUNC3(fields[RF_SAVE], &r.r_isdst);
	FUNC5(&r, fields[RF_LOYEAR], fields[RF_HIYEAR], fields[RF_COMMAND],
			fields[RF_MONTH], fields[RF_DAY], fields[RF_TOD]);
	r.r_name = FUNC1(fields[RF_NAME]);
	r.r_abbrvar = FUNC1(fields[RF_ABBRVAR]);
	if (max_abbrvar_len < FUNC6(r.r_abbrvar))
		max_abbrvar_len = FUNC6(r.r_abbrvar);
	rules = FUNC4(rules, sizeof *rules, nrules, &nrules_alloc);
	rules[nrules++] = r;
}