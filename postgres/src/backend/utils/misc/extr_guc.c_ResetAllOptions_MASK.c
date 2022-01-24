#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  extra; } ;
struct config_string {int /*<<< orphan*/  reset_extra; TYPE_1__ gen; int /*<<< orphan*/  reset_val; int /*<<< orphan*/  variable; int /*<<< orphan*/  (* assign_hook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct config_real {int /*<<< orphan*/  reset_extra; TYPE_1__ gen; int /*<<< orphan*/  reset_val; int /*<<< orphan*/ * variable; int /*<<< orphan*/  (* assign_hook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct config_int {int /*<<< orphan*/  reset_extra; TYPE_1__ gen; int /*<<< orphan*/  reset_val; int /*<<< orphan*/ * variable; int /*<<< orphan*/  (* assign_hook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct config_generic {scalar_t__ context; int flags; scalar_t__ source; int vartype; scalar_t__ reset_source; int /*<<< orphan*/  reset_scontext; int /*<<< orphan*/  scontext; } ;
struct config_enum {int /*<<< orphan*/  reset_extra; TYPE_1__ gen; int /*<<< orphan*/  reset_val; int /*<<< orphan*/ * variable; int /*<<< orphan*/  (* assign_hook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct config_bool {int /*<<< orphan*/  reset_extra; TYPE_1__ gen; int /*<<< orphan*/  reset_val; int /*<<< orphan*/ * variable; int /*<<< orphan*/  (* assign_hook ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  GUC_ACTION_SET ; 
 int GUC_NO_RESET_ALL ; 
 int GUC_REPORT ; 
#define  PGC_BOOL 132 
#define  PGC_ENUM 131 
#define  PGC_INT 130 
#define  PGC_REAL 129 
#define  PGC_STRING 128 
 scalar_t__ PGC_SUSET ; 
 scalar_t__ PGC_S_OVERRIDE ; 
 scalar_t__ PGC_USERSET ; 
 int /*<<< orphan*/  FUNC0 (struct config_generic*) ; 
 struct config_generic** guc_variables ; 
 int num_guc_variables ; 
 int /*<<< orphan*/  FUNC1 (struct config_generic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct config_string*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC9(void)
{
	int			i;

	for (i = 0; i < num_guc_variables; i++)
	{
		struct config_generic *gconf = guc_variables[i];

		/* Don't reset non-SET-able values */
		if (gconf->context != PGC_SUSET &&
			gconf->context != PGC_USERSET)
			continue;
		/* Don't reset if special exclusion from RESET ALL */
		if (gconf->flags & GUC_NO_RESET_ALL)
			continue;
		/* No need to reset if wasn't SET */
		if (gconf->source <= PGC_S_OVERRIDE)
			continue;

		/* Save old value to support transaction abort */
		FUNC1(gconf, GUC_ACTION_SET);

		switch (gconf->vartype)
		{
			case PGC_BOOL:
				{
					struct config_bool *conf = (struct config_bool *) gconf;

					if (conf->assign_hook)
						conf->assign_hook(conf->reset_val,
										  conf->reset_extra);
					*conf->variable = conf->reset_val;
					FUNC2(&conf->gen, &conf->gen.extra,
									conf->reset_extra);
					break;
				}
			case PGC_INT:
				{
					struct config_int *conf = (struct config_int *) gconf;

					if (conf->assign_hook)
						conf->assign_hook(conf->reset_val,
										  conf->reset_extra);
					*conf->variable = conf->reset_val;
					FUNC2(&conf->gen, &conf->gen.extra,
									conf->reset_extra);
					break;
				}
			case PGC_REAL:
				{
					struct config_real *conf = (struct config_real *) gconf;

					if (conf->assign_hook)
						conf->assign_hook(conf->reset_val,
										  conf->reset_extra);
					*conf->variable = conf->reset_val;
					FUNC2(&conf->gen, &conf->gen.extra,
									conf->reset_extra);
					break;
				}
			case PGC_STRING:
				{
					struct config_string *conf = (struct config_string *) gconf;

					if (conf->assign_hook)
						conf->assign_hook(conf->reset_val,
										  conf->reset_extra);
					FUNC3(conf, conf->variable, conf->reset_val);
					FUNC2(&conf->gen, &conf->gen.extra,
									conf->reset_extra);
					break;
				}
			case PGC_ENUM:
				{
					struct config_enum *conf = (struct config_enum *) gconf;

					if (conf->assign_hook)
						conf->assign_hook(conf->reset_val,
										  conf->reset_extra);
					*conf->variable = conf->reset_val;
					FUNC2(&conf->gen, &conf->gen.extra,
									conf->reset_extra);
					break;
				}
		}

		gconf->source = gconf->reset_source;
		gconf->scontext = gconf->reset_scontext;

		if (gconf->flags & GUC_REPORT)
			FUNC0(gconf);
	}
}