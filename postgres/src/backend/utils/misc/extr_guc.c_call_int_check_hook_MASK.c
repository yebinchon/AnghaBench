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
struct TYPE_2__ {int /*<<< orphan*/  name; } ;
struct config_int {TYPE_1__ gen; int /*<<< orphan*/  (* check_hook ) (int*,void**,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  GucSource ;

/* Variables and functions */
 int /*<<< orphan*/  ERRCODE_INVALID_PARAMETER_VALUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  GUC_check_errcode_value ; 
 int /*<<< orphan*/ * GUC_check_errdetail_string ; 
 int /*<<< orphan*/ * GUC_check_errhint_string ; 
 int /*<<< orphan*/ * GUC_check_errmsg_string ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int*,void**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC8(struct config_int *conf, int *newval, void **extra,
					GucSource source, int elevel)
{
	/* Quick success if no hook */
	if (!conf->check_hook)
		return true;

	/* Reset variables that might be set by hook */
	GUC_check_errcode_value = ERRCODE_INVALID_PARAMETER_VALUE;
	GUC_check_errmsg_string = NULL;
	GUC_check_errdetail_string = NULL;
	GUC_check_errhint_string = NULL;

	if (!conf->check_hook(newval, extra, source))
	{
		FUNC1(elevel,
				(FUNC2(GUC_check_errcode_value),
				 GUC_check_errmsg_string ?
				 FUNC6("%s", GUC_check_errmsg_string) :
				 FUNC5("invalid value for parameter \"%s\": %d",
						conf->gen.name, *newval),
				 GUC_check_errdetail_string ?
				 FUNC3("%s", GUC_check_errdetail_string) : 0,
				 GUC_check_errhint_string ?
				 FUNC4("%s", GUC_check_errhint_string) : 0));
		/* Flush any strings created in ErrorContext */
		FUNC0();
		return false;
	}

	return true;
}