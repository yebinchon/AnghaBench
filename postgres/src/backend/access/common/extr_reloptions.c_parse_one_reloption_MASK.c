#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* string_val; int /*<<< orphan*/  enum_val; int /*<<< orphan*/  real_val; int /*<<< orphan*/  int_val; int /*<<< orphan*/  bool_val; } ;
struct TYPE_12__ {int isset; TYPE_2__* gen; TYPE_1__ values; } ;
typedef  TYPE_3__ relopt_value ;
struct TYPE_13__ {int /*<<< orphan*/  (* validate_cb ) (char*) ;} ;
typedef  TYPE_4__ relopt_string ;
struct TYPE_14__ {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_5__ relopt_real ;
struct TYPE_15__ {int /*<<< orphan*/  max; int /*<<< orphan*/  min; } ;
typedef  TYPE_6__ relopt_int ;
struct TYPE_16__ {int /*<<< orphan*/  symbol_val; int /*<<< orphan*/  string_val; } ;
typedef  TYPE_7__ relopt_enum_elt_def ;
struct TYPE_17__ {int /*<<< orphan*/  default_val; int /*<<< orphan*/  detailmsg; TYPE_7__* members; } ;
typedef  TYPE_8__ relopt_enum ;
struct TYPE_11__ {char* name; int namelen; int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  ERROR ; 
#define  RELOPT_TYPE_BOOL 132 
#define  RELOPT_TYPE_ENUM 131 
#define  RELOPT_TYPE_INT 130 
#define  RELOPT_TYPE_REAL 129 
#define  RELOPT_TYPE_STRING 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 scalar_t__ FUNC8 (int) ; 
 int FUNC9 (char*,int /*<<< orphan*/ *) ; 
 int FUNC10 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC11 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 

__attribute__((used)) static void
FUNC15(relopt_value *option, char *text_str, int text_len,
					bool validate)
{
	char	   *value;
	int			value_len;
	bool		parsed;
	bool		nofree = false;

	if (option->isset && validate)
		FUNC2(ERROR,
				(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
				 FUNC6("parameter \"%s\" specified more than once",
						option->gen->name)));

	value_len = text_len - option->gen->namelen - 1;
	value = (char *) FUNC8(value_len + 1);
	FUNC7(value, text_str + option->gen->namelen + 1, value_len);
	value[value_len] = '\0';

	switch (option->gen->type)
	{
		case RELOPT_TYPE_BOOL:
			{
				parsed = FUNC9(value, &option->values.bool_val);
				if (validate && !parsed)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC6("invalid value for boolean option \"%s\": %s",
									option->gen->name, value)));
			}
			break;
		case RELOPT_TYPE_INT:
			{
				relopt_int *optint = (relopt_int *) option->gen;

				parsed = FUNC10(value, &option->values.int_val, 0, NULL);
				if (validate && !parsed)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC6("invalid value for integer option \"%s\": %s",
									option->gen->name, value)));
				if (validate && (option->values.int_val < optint->min ||
								 option->values.int_val > optint->max))
					FUNC2(ERROR,
							(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC6("value %s out of bounds for option \"%s\"",
									value, option->gen->name),
							 FUNC4("Valid values are between \"%d\" and \"%d\".",
									   optint->min, optint->max)));
			}
			break;
		case RELOPT_TYPE_REAL:
			{
				relopt_real *optreal = (relopt_real *) option->gen;

				parsed = FUNC11(value, &option->values.real_val, 0, NULL);
				if (validate && !parsed)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC6("invalid value for floating point option \"%s\": %s",
									option->gen->name, value)));
				if (validate && (option->values.real_val < optreal->min ||
								 option->values.real_val > optreal->max))
					FUNC2(ERROR,
							(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC6("value %s out of bounds for option \"%s\"",
									value, option->gen->name),
							 FUNC4("Valid values are between \"%f\" and \"%f\".",
									   optreal->min, optreal->max)));
			}
			break;
		case RELOPT_TYPE_ENUM:
			{
				relopt_enum *optenum = (relopt_enum *) option->gen;
				relopt_enum_elt_def *elt;

				parsed = false;
				for (elt = optenum->members; elt->string_val; elt++)
				{
					if (FUNC13(value, elt->string_val) == 0)
					{
						option->values.enum_val = elt->symbol_val;
						parsed = true;
						break;
					}
				}
				if (validate && !parsed)
					FUNC2(ERROR,
							(FUNC3(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC6("invalid value for enum option \"%s\": %s",
									option->gen->name, value),
							 optenum->detailmsg ?
							 FUNC5("%s", FUNC0(optenum->detailmsg)) : 0));

				/*
				 * If value is not among the allowed string values, but we are
				 * not asked to validate, just use the default numeric value.
				 */
				if (!parsed)
					option->values.enum_val = optenum->default_val;
			}
			break;
		case RELOPT_TYPE_STRING:
			{
				relopt_string *optstring = (relopt_string *) option->gen;

				option->values.string_val = value;
				nofree = true;
				if (validate && optstring->validate_cb)
					(optstring->validate_cb) (value);
				parsed = true;
			}
			break;
		default:
			FUNC1(ERROR, "unsupported reloption type %d", option->gen->type);
			parsed = true;		/* quiet compiler */
			break;
	}

	if (parsed)
		option->isset = true;
	if (!nofree)
		FUNC12(value);
}