#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int prop_cnt; TYPE_2__* props; } ;
typedef  TYPE_1__ jsdisp_t ;
struct TYPE_10__ {scalar_t__ type; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ dispex_prop_t ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int DISPID ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int DISPID_STARTENUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int PROPF_ENUMERABLE ; 
 scalar_t__ PROP_DELETED ; 
 scalar_t__ PROP_PROTREF ; 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*,TYPE_2__*) ; 
 int FUNC3 (TYPE_1__*,TYPE_2__*) ; 

HRESULT FUNC4(jsdisp_t *obj, DISPID id, BOOL own_only, DISPID *ret)
{
    dispex_prop_t *iter;
    HRESULT hres;

    if(id == DISPID_STARTENUM && !own_only) {
        hres = FUNC1(obj);
        if(FUNC0(hres))
            return hres;
    }

    if(id + 1 < 0 || id+1 >= obj->prop_cnt)
        return S_FALSE;

    for(iter = &obj->props[id + 1]; iter < obj->props + obj->prop_cnt; iter++) {
        if(!iter->name || iter->type == PROP_DELETED)
            continue;
        if(own_only && iter->type == PROP_PROTREF)
            continue;
        if(!(FUNC2(obj, iter) & PROPF_ENUMERABLE))
            continue;
        *ret = FUNC3(obj, iter);
        return S_OK;
    }

    return S_FALSE;
}