
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int code_page; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int WORD ;
typedef int VARIANT ;
struct TYPE_7__ {int cArgs; int cNamedArgs; int * rgdispidNamedArgs; int * rgvarg; } ;
typedef scalar_t__ HRESULT ;
typedef TYPE_2__ DISPPARAMS ;
typedef int DISPID ;


 int DISPATCH_PROPERTYPUT ;
 int DISPID_PROPERTYPUT ;
 scalar_t__ DISP_E_BADPARAMCOUNT ;
 int FAILURE ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 int SUCCESS ;
 int VariantClear (int *) ;
 int efree (int *) ;
 scalar_t__ php_com_invoke_helper (TYPE_1__*,int ,int,TYPE_2__*,int *,int,int) ;
 int php_com_variant_from_zval (int *,int *,int ) ;
 scalar_t__ safe_emalloc (int,int,int ) ;

int php_com_do_invoke_by_id(php_com_dotnet_object *obj, DISPID dispid,
  WORD flags, VARIANT *v, int nargs, zval *args, int silent, int allow_noarg)
{
 DISPID altdispid;
 DISPPARAMS disp_params;
 HRESULT hr;
 VARIANT *vargs = ((void*)0);
 int i;

 if (nargs) {
  vargs = (VARIANT*)safe_emalloc(sizeof(VARIANT), nargs, 0);
 }


 for (i = 0; i < nargs; i++) {
  php_com_variant_from_zval(&vargs[i], &args[nargs - i - 1], obj->code_page);
 }

 disp_params.cArgs = nargs;
 disp_params.cNamedArgs = 0;
 disp_params.rgvarg = vargs;
 disp_params.rgdispidNamedArgs = ((void*)0);

 if (flags & DISPATCH_PROPERTYPUT) {
  altdispid = DISPID_PROPERTYPUT;
  disp_params.rgdispidNamedArgs = &altdispid;
  disp_params.cNamedArgs = 1;
 }


 hr = php_com_invoke_helper(obj, dispid, flags, &disp_params, v, silent, allow_noarg);


 if (vargs) {
  for (i = 0; i < nargs; i++) {
   VariantClear(&vargs[i]);
  }
  efree(vargs);
 }


 if (hr == DISP_E_BADPARAMCOUNT)
  return hr;

 return SUCCEEDED(hr) ? SUCCESS : FAILURE;
}
