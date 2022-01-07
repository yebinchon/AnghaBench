
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int script_ctx_t ;
typedef int jsdisp_t ;
typedef char WCHAR ;
typedef int HRESULT ;


 int PROPF_CONFIGURABLE ;
 int PROPF_WRITABLE ;
 int jsdisp_define_data_property (int *,char const*,int,int ) ;
 int jsval_obj (int *) ;

__attribute__((used)) static HRESULT set_constructor_prop(script_ctx_t *ctx, jsdisp_t *constr, jsdisp_t *prot)
{
    static const WCHAR constructorW[] = {'c','o','n','s','t','r','u','c','t','o','r',0};

    return jsdisp_define_data_property(prot, constructorW, PROPF_WRITABLE | PROPF_CONFIGURABLE,
                                       jsval_obj(constr));
}
