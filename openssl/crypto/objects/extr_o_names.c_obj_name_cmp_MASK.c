#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int (* cmp_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int type; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ OBJ_NAME ;

/* Variables and functions */
 int /*<<< orphan*/ * name_funcs_stack ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const OBJ_NAME *a, const OBJ_NAME *b)
{
    int ret;

    ret = a->type - b->type;
    if (ret == 0) {
        if ((name_funcs_stack != NULL)
            && (FUNC0(name_funcs_stack) > a->type)) {
            ret = FUNC1(name_funcs_stack,
                                      a->type)->cmp_func(a->name, b->name);
        } else
            ret = FUNC2(a->name, b->name);
    }
    return ret;
}