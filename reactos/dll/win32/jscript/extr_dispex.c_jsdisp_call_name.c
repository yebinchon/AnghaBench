
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int dispex_prop_t ;
typedef int WORD ;
typedef int WCHAR ;
typedef int HRESULT ;


 scalar_t__ FAILED (int ) ;
 int find_prop_name_prot (int *,int ,int const*,int **) ;
 int invoke_prop_func (int *,int ,int *,int ,unsigned int,int *,int *,int *) ;
 int string_hash (int const*) ;
 int to_disp (int *) ;

HRESULT jsdisp_call_name(jsdisp_t *disp, const WCHAR *name, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    dispex_prop_t *prop;
    HRESULT hres;

    hres = find_prop_name_prot(disp, string_hash(name), name, &prop);
    if(FAILED(hres))
        return hres;

    return invoke_prop_func(disp, to_disp(disp), prop, flags, argc, argv, r, ((void*)0));
}
