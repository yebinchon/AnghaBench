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
struct TYPE_2__ {scalar_t__ num_defined_types; int /*<<< orphan*/ * defined_types; scalar_t__ allowed; } ;

/* Variables and functions */
 int CV_MAX_MODULES ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cv_current_module ; 
 TYPE_1__* cv_zmodules ; 

__attribute__((used)) static void FUNC2(void)
{
    int i;

    for (i = 0; i < CV_MAX_MODULES; i++)
    {
        if (cv_zmodules[i].allowed)
            FUNC1(FUNC0(), 0, cv_zmodules[i].defined_types);
        cv_zmodules[i].allowed = FALSE;
        cv_zmodules[i].defined_types = NULL;
        cv_zmodules[i].num_defined_types = 0;
    }
    cv_current_module = NULL;
}