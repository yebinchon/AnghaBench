#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  (* free_func ) (char const*,scalar_t__,char const*) ;} ;
struct TYPE_7__ {char const* name; int alias; int type; char const* data; } ;
typedef  TYPE_1__ OBJ_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int OBJ_NAME_ALIAS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 TYPE_1__* FUNC4 (int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * name_funcs_stack ; 
 int /*<<< orphan*/  names_lh ; 
 int /*<<< orphan*/  obj_lock ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char const*,scalar_t__,char const*) ; 

int FUNC10(const char *name, int type, const char *data)
{
    OBJ_NAME *onp, *ret;
    int alias, ok = 0;

    if (!FUNC2())
        return 0;

    alias = type & OBJ_NAME_ALIAS;
    type &= ~OBJ_NAME_ALIAS;

    onp = FUNC4(sizeof(*onp));
    if (onp == NULL) {
        /* ERROR */
        goto unlock;
    }

    onp->name = name;
    onp->alias = alias;
    onp->type = type;
    onp->data = data;

    FUNC1(obj_lock);

    ret = FUNC6(names_lh, onp);
    if (ret != NULL) {
        /* free things */
        if ((name_funcs_stack != NULL)
            && (FUNC7(name_funcs_stack) > ret->type)) {
            /*
             * XXX: I'm not sure I understand why the free function should
             * get three arguments... -- Richard Levitte
             */
            FUNC8(name_funcs_stack,
                                ret->type)->free_func(ret->name, ret->type,
                                                      ret->data);
        }
        FUNC3(ret);
    } else {
        if (FUNC5(names_lh)) {
            /* ERROR */
            FUNC3(onp);
            goto unlock;
        }
    }

    ok = 1;

unlock:
    FUNC0(obj_lock);
    return ok;
}