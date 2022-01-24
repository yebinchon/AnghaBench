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
struct variable {int /*<<< orphan*/  brace_level; int /*<<< orphan*/  type; int /*<<< orphan*/  name; } ;
struct assignment {int value; int /*<<< orphan*/  variable; struct assignment* next; } ;

/* Variables and functions */
#define  ECPGd_key_member 129 
#define  ECPGd_nullable 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ET_WARNING ; 
 int /*<<< orphan*/  PARSE_ERROR ; 
 struct assignment* assignments ; 
 int /*<<< orphan*/  base_yyout ; 
 int /*<<< orphan*/  FUNC1 () ; 
 struct variable* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

void
FUNC10(char *desc_name, char *index)
{
	struct assignment *results;

	FUNC3(base_yyout, "{ ECPGget_desc(__LINE__, %s, %s,", desc_name, index);
	for (results = assignments; results != NULL; results = results->next)
	{
		const struct variable *v = FUNC2(results->variable);
		char	   *str_zero = FUNC7("0");

		switch (results->value)
		{
			case ECPGd_nullable:
				FUNC8(PARSE_ERROR, ET_WARNING, "nullable is always 1");
				break;
			case ECPGd_key_member:
				FUNC8(PARSE_ERROR, ET_WARNING, "key_member is always 0");
				break;
			default:
				break;
		}
		FUNC3(base_yyout, "%s,", FUNC6(results->value));
		FUNC0(base_yyout, v->name, v->type, v->brace_level,
						NULL, NULL, -1, NULL, NULL, str_zero, NULL, NULL);
		FUNC5(str_zero);
	}
	FUNC1();
	FUNC4("ECPGd_EODT);\n", base_yyout);

	FUNC9(2 | 1);
}