
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int jsval_t ;
typedef int jsdisp_t ;
struct TYPE_4__ {scalar_t__ type; } ;
typedef TYPE_1__ dispex_prop_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef char* DWORD ;


 int DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (int ) ;
 scalar_t__ PROP_DELETED ;
 int find_prop_name_prot (int *,int ,char*,TYPE_1__**) ;
 int jsval_undefined () ;
 int prop_get (int *,TYPE_1__*,int *) ;
 int string_hash (char*) ;
 int swprintf (char*,char const*,char*) ;

HRESULT jsdisp_get_idx(jsdisp_t *obj, DWORD idx, jsval_t *r)
{
    WCHAR name[12];
    dispex_prop_t *prop;
    HRESULT hres;

    static const WCHAR formatW[] = {'%','d',0};

    swprintf(name, formatW, idx);

    hres = find_prop_name_prot(obj, string_hash(name), name, &prop);
    if(FAILED(hres))
        return hres;

    if(!prop || prop->type==PROP_DELETED) {
        *r = jsval_undefined();
        return DISP_E_UNKNOWNNAME;
    }

    return prop_get(obj, prop, r);
}
