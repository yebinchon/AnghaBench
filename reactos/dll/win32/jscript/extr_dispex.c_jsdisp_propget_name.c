
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ dispex_prop_t ;
typedef int WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 scalar_t__ PROP_DELETED ;
 int S_OK ;
 int find_prop_name_prot (int *,int ,int const*,TYPE_1__**) ;
 int jsval_undefined () ;
 int prop_get (int *,TYPE_1__*,int *) ;
 int string_hash (int const*) ;

HRESULT jsdisp_propget_name(jsdisp_t *obj, const WCHAR *name, jsval_t *val)
{
    dispex_prop_t *prop;
    HRESULT hres;

    hres = find_prop_name_prot(obj, string_hash(name), name, &prop);
    if(FAILED(hres))
        return hres;

    if(!prop || prop->type==PROP_DELETED) {
        *val = jsval_undefined();
        return S_OK;
    }

    return prop_get(obj, prop, val);
}
