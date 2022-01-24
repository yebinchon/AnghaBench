#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ links; int /*<<< orphan*/  dso; } ;
typedef  TYPE_1__ CONF_MODULE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * supported_modules ; 

void FUNC6(int all)
{
    int i;
    CONF_MODULE *md;
    FUNC0();
    /* unload modules in reverse order */
    for (i = FUNC4(supported_modules) - 1; i >= 0; i--) {
        md = FUNC5(supported_modules, i);
        /* If static or in use and 'all' not set ignore it */
        if (((md->links > 0) || !md->dso) && !all)
            continue;
        /* Since we're working in reverse this is OK */
        (void)FUNC2(supported_modules, i);
        FUNC1(md);
    }
    if (FUNC4(supported_modules) == 0) {
        FUNC3(supported_modules);
        supported_modules = NULL;
    }
}