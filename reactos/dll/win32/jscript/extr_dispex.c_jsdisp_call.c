
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
typedef int jsdisp_t ;
typedef int dispex_prop_t ;
typedef int WORD ;
typedef int HRESULT ;
typedef int DISPID ;


 int DISP_E_MEMBERNOTFOUND ;
 int * get_prop (int *,int ) ;
 int invoke_prop_func (int *,int ,int *,int ,unsigned int,int *,int *,int *) ;
 int to_disp (int *) ;

HRESULT jsdisp_call(jsdisp_t *disp, DISPID id, WORD flags, unsigned argc, jsval_t *argv, jsval_t *r)
{
    dispex_prop_t *prop;

    prop = get_prop(disp, id);
    if(!prop)
        return DISP_E_MEMBERNOTFOUND;

    return invoke_prop_func(disp, to_disp(disp), prop, flags, argc, argv, r, ((void*)0));
}
