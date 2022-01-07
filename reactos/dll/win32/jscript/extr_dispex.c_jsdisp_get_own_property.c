
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int mask; int flags; int * setter; int * getter; void* explicit_setter; void* explicit_getter; int value; void* explicit_value; } ;
typedef TYPE_3__ property_desc_t ;
typedef int jsdisp_t ;
struct TYPE_9__ {int setter; int getter; } ;
struct TYPE_10__ {TYPE_1__ accessor; } ;
struct TYPE_12__ {int type; int flags; TYPE_2__ u; } ;
typedef TYPE_4__ dispex_prop_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int BOOL ;


 int DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (int ) ;
 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int PROPF_WRITABLE ;



 int S_OK ;
 void* TRUE ;
 int find_prop_name (int *,int ,int const*,TYPE_4__**) ;
 int * jsdisp_addref (int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int prop_get (int *,TYPE_4__*,int *) ;
 int string_hash (int const*) ;

HRESULT jsdisp_get_own_property(jsdisp_t *obj, const WCHAR *name, BOOL flags_only,
                                property_desc_t *desc)
{
    dispex_prop_t *prop;
    HRESULT hres;

    hres = find_prop_name(obj, string_hash(name), name, &prop);
    if(FAILED(hres))
        return hres;

    if(!prop)
        return DISP_E_UNKNOWNNAME;

    memset(desc, 0, sizeof(*desc));

    switch(prop->type) {
    case 129:
    case 128:
        desc->mask |= PROPF_WRITABLE;
        desc->explicit_value = TRUE;
        if(!flags_only) {
            hres = prop_get(obj, prop, &desc->value);
            if(FAILED(hres))
                return hres;
        }
        break;
    case 130:
        desc->explicit_getter = desc->explicit_setter = TRUE;
        if(!flags_only) {
            desc->getter = prop->u.accessor.getter
                ? jsdisp_addref(prop->u.accessor.getter) : ((void*)0);
            desc->setter = prop->u.accessor.setter
                ? jsdisp_addref(prop->u.accessor.setter) : ((void*)0);
        }
        break;
    default:
        return DISP_E_UNKNOWNNAME;
    }

    desc->flags = prop->flags & (PROPF_ENUMERABLE | PROPF_WRITABLE | PROPF_CONFIGURABLE);
    desc->mask |= PROPF_ENUMERABLE | PROPF_CONFIGURABLE;
    return S_OK;
}
