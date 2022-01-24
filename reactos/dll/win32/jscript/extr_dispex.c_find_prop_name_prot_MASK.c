#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int props; struct TYPE_12__* prototype; } ;
typedef  TYPE_2__ jsdisp_t ;
struct TYPE_11__ {TYPE_3__* ref; } ;
struct TYPE_13__ {scalar_t__ type; int /*<<< orphan*/  name; TYPE_1__ u; } ;
typedef  TYPE_3__ dispex_prop_t ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ PROP_DELETED ; 
 scalar_t__ PROP_PROTREF ; 
 int /*<<< orphan*/  S_OK ; 
 TYPE_3__* FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,unsigned int,int /*<<< orphan*/  const*,TYPE_3__**) ; 

__attribute__((used)) static HRESULT FUNC3(jsdisp_t *This, unsigned hash, const WCHAR *name, dispex_prop_t **ret)
{
    dispex_prop_t *prop, *del=NULL;
    HRESULT hres;

    hres = FUNC2(This, hash, name, &prop);
    if(FUNC0(hres))
        return hres;
    if(prop && prop->type==PROP_DELETED) {
        del = prop;
    } else if(prop) {
        *ret = prop;
        return S_OK;
    }

    if(This->prototype) {
        hres = FUNC3(This->prototype, hash, name, &prop);
        if(FUNC0(hres))
            return hres;
        if(prop) {
            if(del) {
                del->type = PROP_PROTREF;
                del->u.ref = prop - This->prototype->props;
                prop = del;
            }else {
                prop = FUNC1(This, prop->name, prop - This->prototype->props);
                if(!prop)
                    return E_OUTOFMEMORY;
            }

            *ret = prop;
            return S_OK;
        }
    }

    *ret = del;
    return S_OK;
}