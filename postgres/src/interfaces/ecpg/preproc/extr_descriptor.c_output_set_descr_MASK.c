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
#define  ECPGd_cardinality 142 
#define  ECPGd_data 141 
#define  ECPGd_di_code 140 
#define  ECPGd_di_precision 139 
#define  ECPGd_indicator 138 
#define  ECPGd_key_member 137 
#define  ECPGd_length 136 
#define  ECPGd_name 135 
#define  ECPGd_nullable 134 
#define  ECPGd_octet 133 
#define  ECPGd_precision 132 
#define  ECPGd_ret_length 131 
#define  ECPGd_ret_octet 130 
#define  ECPGd_scale 129 
#define  ECPGd_type 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PARSE_ERROR ; 
 struct assignment* assignments ; 
 int /*<<< orphan*/  base_yyout ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 struct variable* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

void
FUNC11(char *desc_name, char *index)
{
	struct assignment *results;

	FUNC4(base_yyout, "{ ECPGset_desc(__LINE__, %s, %s,", desc_name, index);
	for (results = assignments; results != NULL; results = results->next)
	{
		const struct variable *v = FUNC3(results->variable);

		switch (results->value)
		{
			case ECPGd_cardinality:
			case ECPGd_di_code:
			case ECPGd_di_precision:
			case ECPGd_precision:
			case ECPGd_scale:
				FUNC9(PARSE_ERROR, "descriptor item \"%s\" is not implemented",
						FUNC1(results->value));
				break;

			case ECPGd_key_member:
			case ECPGd_name:
			case ECPGd_nullable:
			case ECPGd_octet:
			case ECPGd_ret_length:
			case ECPGd_ret_octet:
				FUNC9(PARSE_ERROR, "descriptor item \"%s\" cannot be set",
						FUNC1(results->value));
				break;

			case ECPGd_data:
			case ECPGd_indicator:
			case ECPGd_length:
			case ECPGd_type:
				{
					char	   *str_zero = FUNC8("0");

					FUNC4(base_yyout, "%s,", FUNC7(results->value));
					FUNC0(base_yyout, v->name, v->type, v->brace_level,
									NULL, NULL, -1, NULL, NULL, str_zero, NULL, NULL);
					FUNC6(str_zero);
				}
				break;

			default:
				;
		}
	}
	FUNC2();
	FUNC5("ECPGd_EODT);\n", base_yyout);

	FUNC10(2 | 1);
}