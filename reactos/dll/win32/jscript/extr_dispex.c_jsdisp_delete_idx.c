
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsdisp_t ;
typedef int dispex_prop_t ;
typedef char WCHAR ;
typedef int HRESULT ;
typedef char* DWORD ;
typedef int BOOL ;


 scalar_t__ FAILED (int ) ;
 int delete_prop (int *,int *) ;
 int find_prop_name (int *,int ,char*,int **) ;
 int string_hash (char*) ;
 int swprintf (char*,char const*,char*) ;

HRESULT jsdisp_delete_idx(jsdisp_t *obj, DWORD idx)
{
    static const WCHAR formatW[] = {'%','d',0};
    WCHAR buf[12];
    dispex_prop_t *prop;
    BOOL b;
    HRESULT hres;

    swprintf(buf, formatW, idx);

    hres = find_prop_name(obj, string_hash(buf), buf, &prop);
    if(FAILED(hres) || !prop)
        return hres;

    return delete_prop(prop, &b);
}
