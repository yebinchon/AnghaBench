
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int jsdisp_t ;
struct TYPE_5__ {scalar_t__ type; } ;
typedef TYPE_1__ dispex_prop_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;
typedef int DISPID ;


 int DISP_E_UNKNOWNNAME ;
 scalar_t__ FAILED (int ) ;
 int PROPF_CONFIGURABLE ;
 int PROPF_ENUMERABLE ;
 int PROPF_WRITABLE ;
 scalar_t__ PROP_DELETED ;
 int S_OK ;
 int TRACE (char*,int ) ;
 int debugstr_w (int const*) ;
 int ensure_prop_name (int *,int const*,int,TYPE_1__**) ;
 int fdexNameEnsure ;
 int find_prop_name_prot (int *,int ,int const*,TYPE_1__**) ;
 int prop_to_id (int *,TYPE_1__*) ;
 int string_hash (int const*) ;

HRESULT jsdisp_get_id(jsdisp_t *jsdisp, const WCHAR *name, DWORD flags, DISPID *id)
{
    dispex_prop_t *prop;
    HRESULT hres;

    if(flags & fdexNameEnsure)
        hres = ensure_prop_name(jsdisp, name, PROPF_ENUMERABLE | PROPF_CONFIGURABLE | PROPF_WRITABLE,
                                &prop);
    else
        hres = find_prop_name_prot(jsdisp, string_hash(name), name, &prop);
    if(FAILED(hres))
        return hres;

    if(prop && prop->type!=PROP_DELETED) {
        *id = prop_to_id(jsdisp, prop);
        return S_OK;
    }

    TRACE("not found %s\n", debugstr_w(name));
    return DISP_E_UNKNOWNNAME;
}
