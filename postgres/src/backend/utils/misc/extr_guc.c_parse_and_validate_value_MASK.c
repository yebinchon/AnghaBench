#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
union config_var_val {int /*<<< orphan*/  enumval; int /*<<< orphan*/ * stringval; int /*<<< orphan*/  realval; int /*<<< orphan*/  intval; int /*<<< orphan*/  boolval; } ;
struct TYPE_6__ {int flags; } ;
struct config_string {TYPE_3__ gen; } ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
struct config_real {int /*<<< orphan*/  max; int /*<<< orphan*/  min; TYPE_2__ gen; } ;
struct TYPE_4__ {int /*<<< orphan*/  flags; } ;
struct config_int {int /*<<< orphan*/  max; int /*<<< orphan*/  min; TYPE_1__ gen; } ;
struct config_generic {int vartype; } ;
struct config_enum {int dummy; } ;
struct config_bool {int dummy; } ;
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int GUC_IS_NAME ; 
#define  PGC_BOOL 132 
#define  PGC_ENUM 131 
#define  PGC_INT 130 
#define  PGC_REAL 129 
#define  PGC_STRING 128 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct config_bool*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (struct config_enum*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct config_int*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct config_real*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct config_string*,int /*<<< orphan*/ **,void**,int /*<<< orphan*/ ,int) ; 
 char* FUNC6 (struct config_enum*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct config_enum*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 char* FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC17 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static bool
FUNC21(struct config_generic *record,
						 const char *name, const char *value,
						 GucSource source, int elevel,
						 union config_var_val *newval, void **newextra)
{
	switch (record->vartype)
	{
		case PGC_BOOL:
			{
				struct config_bool *conf = (struct config_bool *) record;

				if (!FUNC15(value, &newval->boolval))
				{
					FUNC8(elevel,
							(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC11("parameter \"%s\" requires a Boolean value",
									name)));
					return false;
				}

				if (!FUNC1(conf, &newval->boolval, newextra,
										  source, elevel))
					return false;
			}
			break;
		case PGC_INT:
			{
				struct config_int *conf = (struct config_int *) record;
				const char *hintmsg;

				if (!FUNC16(value, &newval->intval,
							   conf->gen.flags, &hintmsg))
				{
					FUNC8(elevel,
							(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC11("invalid value for parameter \"%s\": \"%s\"",
									name, value),
							 hintmsg ? FUNC10("%s", FUNC0(hintmsg)) : 0));
					return false;
				}

				if (newval->intval < conf->min || newval->intval > conf->max)
				{
					const char *unit = FUNC13(conf->gen.flags);

					FUNC8(elevel,
							(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC11("%d%s%s is outside the valid range for parameter \"%s\" (%d .. %d)",
									newval->intval,
									unit ? " " : "",
									unit ? unit : "",
									name,
									conf->min, conf->max)));
					return false;
				}

				if (!FUNC3(conf, &newval->intval, newextra,
										 source, elevel))
					return false;
			}
			break;
		case PGC_REAL:
			{
				struct config_real *conf = (struct config_real *) record;
				const char *hintmsg;

				if (!FUNC17(value, &newval->realval,
								conf->gen.flags, &hintmsg))
				{
					FUNC8(elevel,
							(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC11("invalid value for parameter \"%s\": \"%s\"",
									name, value),
							 hintmsg ? FUNC10("%s", FUNC0(hintmsg)) : 0));
					return false;
				}

				if (newval->realval < conf->min || newval->realval > conf->max)
				{
					const char *unit = FUNC13(conf->gen.flags);

					FUNC8(elevel,
							(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC11("%g%s%s is outside the valid range for parameter \"%s\" (%g .. %g)",
									newval->realval,
									unit ? " " : "",
									unit ? unit : "",
									name,
									conf->min, conf->max)));
					return false;
				}

				if (!FUNC4(conf, &newval->realval, newextra,
										  source, elevel))
					return false;
			}
			break;
		case PGC_STRING:
			{
				struct config_string *conf = (struct config_string *) record;

				/*
				 * The value passed by the caller could be transient, so we
				 * always strdup it.
				 */
				newval->stringval = FUNC14(elevel, value);
				if (newval->stringval == NULL)
					return false;

				/*
				 * The only built-in "parsing" check we have is to apply
				 * truncation if GUC_IS_NAME.
				 */
				if (conf->gen.flags & GUC_IS_NAME)
					FUNC20(newval->stringval,
										FUNC19(newval->stringval),
										true);

				if (!FUNC5(conf, &newval->stringval, newextra,
											source, elevel))
				{
					FUNC12(newval->stringval);
					newval->stringval = NULL;
					return false;
				}
			}
			break;
		case PGC_ENUM:
			{
				struct config_enum *conf = (struct config_enum *) record;

				if (!FUNC7(conf, value, &newval->enumval))
				{
					char	   *hintmsg;

					hintmsg = FUNC6(conf,
													  "Available values: ",
													  ".", ", ");

					FUNC8(elevel,
							(FUNC9(ERRCODE_INVALID_PARAMETER_VALUE),
							 FUNC11("invalid value for parameter \"%s\": \"%s\"",
									name, value),
							 hintmsg ? FUNC10("%s", FUNC0(hintmsg)) : 0));

					if (hintmsg)
						FUNC18(hintmsg);
					return false;
				}

				if (!FUNC2(conf, &newval->enumval, newextra,
										  source, elevel))
					return false;
			}
			break;
	}

	return true;
}