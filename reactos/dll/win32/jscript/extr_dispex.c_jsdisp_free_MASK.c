#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {scalar_t__ setter; scalar_t__ getter; } ;
struct TYPE_11__ {TYPE_1__ accessor; int /*<<< orphan*/  val; } ;
struct TYPE_13__ {int prop_cnt; int type; TYPE_3__* builtin_info; scalar_t__ prototype; int /*<<< orphan*/  ctx; struct TYPE_13__* props; struct TYPE_13__* name; TYPE_2__ u; } ;
typedef  TYPE_4__ jsdisp_t ;
typedef  TYPE_4__ dispex_prop_t ;
struct TYPE_12__ {int /*<<< orphan*/  (* destructor ) (TYPE_4__*) ;} ;

/* Variables and functions */
#define  PROP_ACCESSOR 129 
#define  PROP_JSVAL 128 
 int /*<<< orphan*/  FUNC0 (char*,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 

void FUNC6(jsdisp_t *obj)
{
    dispex_prop_t *prop;

    FUNC0("(%p)\n", obj);

    for(prop = obj->props; prop < obj->props+obj->prop_cnt; prop++) {
        switch(prop->type) {
        case PROP_JSVAL:
            FUNC3(prop->u.val);
            break;
        case PROP_ACCESSOR:
            if(prop->u.accessor.getter)
                FUNC2(prop->u.accessor.getter);
            if(prop->u.accessor.setter)
                FUNC2(prop->u.accessor.setter);
            break;
        default:
            break;
        };
        FUNC1(prop->name);
    }
    FUNC1(obj->props);
    FUNC4(obj->ctx);
    if(obj->prototype)
        FUNC2(obj->prototype);

    if(obj->builtin_info->destructor)
        obj->builtin_info->destructor(obj);
    else
        FUNC1(obj);
}