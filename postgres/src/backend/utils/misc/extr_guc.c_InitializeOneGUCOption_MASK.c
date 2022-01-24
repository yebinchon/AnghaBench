#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {void* extra; int /*<<< orphan*/  name; } ;
struct config_string {char** variable; char* reset_val; void* reset_extra; TYPE_4__ gen; int /*<<< orphan*/  (* assign_hook ) (char*,void*) ;int /*<<< orphan*/ * boot_val; } ;
struct TYPE_8__ {void* extra; int /*<<< orphan*/  name; } ;
struct config_real {double boot_val; double min; double max; double* variable; double reset_val; void* reset_extra; TYPE_3__ gen; int /*<<< orphan*/  (* assign_hook ) (double,void*) ;} ;
struct TYPE_7__ {void* extra; int /*<<< orphan*/  name; } ;
struct config_int {int boot_val; int min; int max; int* variable; int reset_val; void* reset_extra; TYPE_2__ gen; int /*<<< orphan*/  (* assign_hook ) (int,void*) ;} ;
struct config_generic {int vartype; scalar_t__ sourceline; int /*<<< orphan*/ * sourcefile; int /*<<< orphan*/ * extra; int /*<<< orphan*/ * stack; void* reset_scontext; void* scontext; void* reset_source; void* source; scalar_t__ status; } ;
struct TYPE_10__ {void* extra; int /*<<< orphan*/  name; } ;
struct config_enum {int boot_val; int* variable; int reset_val; void* reset_extra; TYPE_5__ gen; int /*<<< orphan*/  (* assign_hook ) (int,void*) ;} ;
struct TYPE_6__ {void* extra; int /*<<< orphan*/  name; } ;
struct config_bool {int boot_val; int* variable; int reset_val; void* reset_extra; TYPE_1__ gen; int /*<<< orphan*/  (* assign_hook ) (int,void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FATAL ; 
 int /*<<< orphan*/  LOG ; 
#define  PGC_BOOL 132 
#define  PGC_ENUM 131 
#define  PGC_INT 130 
 void* PGC_INTERNAL ; 
#define  PGC_REAL 129 
#define  PGC_STRING 128 
 void* PGC_S_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (struct config_bool*,int*,void**,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct config_enum*,int*,void**,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct config_int*,int*,void**,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct config_real*,double*,void**,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct config_string*,char**,void**,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int,void*) ; 
 int /*<<< orphan*/  FUNC9 (int,void*) ; 
 int /*<<< orphan*/  FUNC10 (double,void*) ; 
 int /*<<< orphan*/  FUNC11 (char*,void*) ; 
 int /*<<< orphan*/  FUNC12 (int,void*) ; 

__attribute__((used)) static void
FUNC13(struct config_generic *gconf)
{
	gconf->status = 0;
	gconf->source = PGC_S_DEFAULT;
	gconf->reset_source = PGC_S_DEFAULT;
	gconf->scontext = PGC_INTERNAL;
	gconf->reset_scontext = PGC_INTERNAL;
	gconf->stack = NULL;
	gconf->extra = NULL;
	gconf->sourcefile = NULL;
	gconf->sourceline = 0;

	switch (gconf->vartype)
	{
		case PGC_BOOL:
			{
				struct config_bool *conf = (struct config_bool *) gconf;
				bool		newval = conf->boot_val;
				void	   *extra = NULL;

				if (!FUNC1(conf, &newval, &extra,
										  PGC_S_DEFAULT, LOG))
					FUNC6(FATAL, "failed to initialize %s to %d",
						 conf->gen.name, (int) newval);
				if (conf->assign_hook)
					conf->assign_hook(newval, extra);
				*conf->variable = conf->reset_val = newval;
				conf->gen.extra = conf->reset_extra = extra;
				break;
			}
		case PGC_INT:
			{
				struct config_int *conf = (struct config_int *) gconf;
				int			newval = conf->boot_val;
				void	   *extra = NULL;

				FUNC0(newval >= conf->min);
				FUNC0(newval <= conf->max);
				if (!FUNC3(conf, &newval, &extra,
										 PGC_S_DEFAULT, LOG))
					FUNC6(FATAL, "failed to initialize %s to %d",
						 conf->gen.name, newval);
				if (conf->assign_hook)
					conf->assign_hook(newval, extra);
				*conf->variable = conf->reset_val = newval;
				conf->gen.extra = conf->reset_extra = extra;
				break;
			}
		case PGC_REAL:
			{
				struct config_real *conf = (struct config_real *) gconf;
				double		newval = conf->boot_val;
				void	   *extra = NULL;

				FUNC0(newval >= conf->min);
				FUNC0(newval <= conf->max);
				if (!FUNC4(conf, &newval, &extra,
										  PGC_S_DEFAULT, LOG))
					FUNC6(FATAL, "failed to initialize %s to %g",
						 conf->gen.name, newval);
				if (conf->assign_hook)
					conf->assign_hook(newval, extra);
				*conf->variable = conf->reset_val = newval;
				conf->gen.extra = conf->reset_extra = extra;
				break;
			}
		case PGC_STRING:
			{
				struct config_string *conf = (struct config_string *) gconf;
				char	   *newval;
				void	   *extra = NULL;

				/* non-NULL boot_val must always get strdup'd */
				if (conf->boot_val != NULL)
					newval = FUNC7(FATAL, conf->boot_val);
				else
					newval = NULL;

				if (!FUNC5(conf, &newval, &extra,
											PGC_S_DEFAULT, LOG))
					FUNC6(FATAL, "failed to initialize %s to \"%s\"",
						 conf->gen.name, newval ? newval : "");
				if (conf->assign_hook)
					conf->assign_hook(newval, extra);
				*conf->variable = conf->reset_val = newval;
				conf->gen.extra = conf->reset_extra = extra;
				break;
			}
		case PGC_ENUM:
			{
				struct config_enum *conf = (struct config_enum *) gconf;
				int			newval = conf->boot_val;
				void	   *extra = NULL;

				if (!FUNC2(conf, &newval, &extra,
										  PGC_S_DEFAULT, LOG))
					FUNC6(FATAL, "failed to initialize %s to %d",
						 conf->gen.name, newval);
				if (conf->assign_hook)
					conf->assign_hook(newval, extra);
				*conf->variable = conf->reset_val = newval;
				conf->gen.extra = conf->reset_extra = extra;
				break;
			}
	}
}