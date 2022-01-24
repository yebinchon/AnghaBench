#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * gN_cache; int /*<<< orphan*/ * users_pwd; int /*<<< orphan*/ * seed_key; int /*<<< orphan*/ * default_N; int /*<<< orphan*/ * default_g; } ;
typedef  TYPE_1__ SRP_VBASE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 

SRP_VBASE *FUNC7(char *seed_key)
{
    SRP_VBASE *vb = FUNC1(sizeof(*vb));

    if (vb == NULL)
        return NULL;
    if ((vb->users_pwd = FUNC6()) == NULL
        || (vb->gN_cache = FUNC4()) == NULL) {
        FUNC0(vb);
        return NULL;
    }
    vb->default_g = NULL;
    vb->default_N = NULL;
    vb->seed_key = NULL;
    if ((seed_key != NULL) && (vb->seed_key = FUNC2(seed_key)) == NULL) {
        FUNC5(vb->users_pwd);
        FUNC3(vb->gN_cache);
        FUNC0(vb);
        return NULL;
    }
    return vb;
}