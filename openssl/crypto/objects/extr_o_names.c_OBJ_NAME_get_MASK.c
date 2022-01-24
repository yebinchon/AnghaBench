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
struct TYPE_4__ {char const* name; int type; char* data; scalar_t__ alias; } ;
typedef  TYPE_1__ OBJ_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int OBJ_NAME_ALIAS ; 
 int /*<<< orphan*/  FUNC2 () ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  names_lh ; 
 int /*<<< orphan*/  obj_lock ; 

const char *FUNC4(const char *name, int type)
{
    OBJ_NAME on, *ret;
    int num = 0, alias;
    const char *value = NULL;

    if (name == NULL)
        return NULL;
    if (!FUNC2())
        return NULL;
    FUNC0(obj_lock);

    alias = type & OBJ_NAME_ALIAS;
    type &= ~OBJ_NAME_ALIAS;

    on.name = name;
    on.type = type;

    for (;;) {
        ret = FUNC3(names_lh, &on);
        if (ret == NULL)
            break;
        if ((ret->alias) && !alias) {
            if (++num > 10)
                break;
            on.name = ret->data;
        } else {
            value = ret->data;
            break;
        }
    }

    FUNC1(obj_lock);
    return value;
}