
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_6__ {void* val; } ;
struct TYPE_7__ {scalar_t__ type; TYPE_1__ u; int flags; } ;
typedef TYPE_2__ dispex_prop_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ PROP_DELETED ;
 scalar_t__ PROP_JSVAL ;
 scalar_t__ SUCCEEDED (int ) ;
 int TRACE (char*,int ,int ) ;
 TYPE_2__* alloc_prop (int *,int const*,scalar_t__,int ) ;
 int debugstr_w (int const*) ;
 int find_prop_name_prot (int *,int ,int const*,TYPE_2__**) ;
 void* jsval_undefined () ;
 int string_hash (int const*) ;

__attribute__((used)) static HRESULT ensure_prop_name(jsdisp_t *This, const WCHAR *name, DWORD create_flags, dispex_prop_t **ret)
{
    dispex_prop_t *prop;
    HRESULT hres;

    hres = find_prop_name_prot(This, string_hash(name), name, &prop);
    if(SUCCEEDED(hres) && (!prop || prop->type == PROP_DELETED)) {
        TRACE("creating prop %s flags %x\n", debugstr_w(name), create_flags);

        if(prop) {
            prop->type = PROP_JSVAL;
            prop->flags = create_flags;
            prop->u.val = jsval_undefined();
        }else {
            prop = alloc_prop(This, name, PROP_JSVAL, create_flags);
            if(!prop)
                return E_OUTOFMEMORY;
        }

        prop->u.val = jsval_undefined();
    }

    *ret = prop;
    return hres;
}
