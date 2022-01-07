
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int props; struct TYPE_12__* prototype; } ;
typedef TYPE_2__ jsdisp_t ;
struct TYPE_11__ {TYPE_3__* ref; } ;
struct TYPE_13__ {scalar_t__ type; int name; TYPE_1__ u; } ;
typedef TYPE_3__ dispex_prop_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ PROP_DELETED ;
 scalar_t__ PROP_PROTREF ;
 int S_OK ;
 TYPE_3__* alloc_protref (TYPE_2__*,int ,TYPE_3__*) ;
 int find_prop_name (TYPE_2__*,unsigned int,int const*,TYPE_3__**) ;

__attribute__((used)) static HRESULT find_prop_name_prot(jsdisp_t *This, unsigned hash, const WCHAR *name, dispex_prop_t **ret)
{
    dispex_prop_t *prop, *del=((void*)0);
    HRESULT hres;

    hres = find_prop_name(This, hash, name, &prop);
    if(FAILED(hres))
        return hres;
    if(prop && prop->type==PROP_DELETED) {
        del = prop;
    } else if(prop) {
        *ret = prop;
        return S_OK;
    }

    if(This->prototype) {
        hres = find_prop_name_prot(This->prototype, hash, name, &prop);
        if(FAILED(hres))
            return hres;
        if(prop) {
            if(del) {
                del->type = PROP_PROTREF;
                del->u.ref = prop - This->prototype->props;
                prop = del;
            }else {
                prop = alloc_protref(This, prop->name, prop - This->prototype->props);
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
