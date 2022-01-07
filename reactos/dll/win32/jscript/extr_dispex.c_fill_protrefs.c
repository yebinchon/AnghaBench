
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int prop_cnt; TYPE_3__* props; struct TYPE_10__* prototype; } ;
typedef TYPE_2__ jsdisp_t ;
struct TYPE_9__ {int ref; } ;
struct TYPE_11__ {scalar_t__ type; int name; TYPE_1__ u; scalar_t__ flags; int hash; } ;
typedef TYPE_3__ dispex_prop_t ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ PROP_DELETED ;
 scalar_t__ PROP_PROTREF ;
 int S_OK ;
 TYPE_3__* alloc_protref (TYPE_2__*,int ,int) ;
 int find_prop_name (TYPE_2__*,int ,int ,TYPE_3__**) ;

__attribute__((used)) static HRESULT fill_protrefs(jsdisp_t *This)
{
    dispex_prop_t *iter, *prop;
    HRESULT hres;

    if(!This->prototype)
        return S_OK;

    fill_protrefs(This->prototype);

    for(iter = This->prototype->props; iter < This->prototype->props+This->prototype->prop_cnt; iter++) {
        if(!iter->name)
            continue;
        hres = find_prop_name(This, iter->hash, iter->name, &prop);
        if(FAILED(hres))
            return hres;
        if(!prop || prop->type==PROP_DELETED) {
            if(prop) {
                prop->type = PROP_PROTREF;
                prop->flags = 0;
                prop->u.ref = iter - This->prototype->props;
            }else {
                prop = alloc_protref(This, iter->name, iter - This->prototype->props);
                if(!prop)
                    return E_OUTOFMEMORY;
            }
        }
    }

    return S_OK;
}
