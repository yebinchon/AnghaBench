
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_3__ {int code_page; int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef scalar_t__ VARTYPE ;
typedef int VARIANT ;
typedef int HRESULT ;


 int DISPATCH_METHOD ;
 int DISPATCH_PROPERTYGET ;
 int DISPID_VALUE ;





 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ SUCCESS ;
 int S_OK ;
 scalar_t__ VT_BOOL ;
 scalar_t__ VT_BSTR ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ VT_EMPTY ;
 scalar_t__ VT_INT ;
 scalar_t__ VT_R8 ;
 scalar_t__ V_VT (int *) ;
 int VariantChangeType (int *,int *,int ,scalar_t__) ;
 int VariantClear (int *) ;
 int VariantCopy (int *,int *) ;
 int VariantInit (int *) ;
 int ZVAL_NULL (int *) ;


 scalar_t__ php_com_do_invoke_by_id (TYPE_1__*,int ,int,int *,int ,int *,int,int ) ;
 int php_com_zval_from_variant (int *,int *,int ) ;
 int zend_std_cast_object_tostring (int *,int *,int) ;

__attribute__((used)) static int com_object_cast(zend_object *readobj, zval *writeobj, int type)
{
 php_com_dotnet_object *obj;
 VARIANT v;
 VARTYPE vt = VT_EMPTY;
 HRESULT res = S_OK;

 obj = (php_com_dotnet_object*) readobj;
 ZVAL_NULL(writeobj);
 VariantInit(&v);

 if (V_VT(&obj->v) == VT_DISPATCH) {
  if (SUCCESS != php_com_do_invoke_by_id(obj, DISPID_VALUE,
    DISPATCH_METHOD|DISPATCH_PROPERTYGET, &v, 0, ((void*)0), 1, 0)) {
   VariantCopy(&v, &obj->v);
  }
 } else {
  VariantCopy(&v, &obj->v);
 }

 switch(type) {
  case 132:
  case 128:
   vt = VT_INT;
   break;
  case 134:
   vt = VT_R8;
   break;
  case 133:
  case 130:
  case 129:
   vt = VT_BOOL;
   break;
  case 131:
   vt = VT_BSTR;
   break;
  default:
   ;
 }

 if (vt != VT_EMPTY && vt != V_VT(&v)) {
  res = VariantChangeType(&v, &v, 0, vt);
 }

 if (SUCCEEDED(res)) {
  php_com_zval_from_variant(writeobj, &v, obj->code_page);
 }

 VariantClear(&v);

 if (SUCCEEDED(res)) {
  return SUCCESS;
 }

 return zend_std_cast_object_tostring(readobj, writeobj, type);
}
