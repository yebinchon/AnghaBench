
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int dispex_prop_t ;
typedef int WCHAR ;
typedef int HRESULT ;
typedef int DWORD ;


 scalar_t__ FAILED (int ) ;
 int ensure_prop_name (int *,int const*,int ,int **) ;
 int prop_put (int *,int *,int ) ;

HRESULT jsdisp_propput(jsdisp_t *obj, const WCHAR *name, DWORD flags, jsval_t val)
{
    dispex_prop_t *prop;
    HRESULT hres;

    hres = ensure_prop_name(obj, name, flags, &prop);
    if(FAILED(hres))
        return hres;

    return prop_put(obj, prop, val);
}
