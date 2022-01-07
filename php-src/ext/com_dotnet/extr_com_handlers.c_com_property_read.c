
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_3__ {int code_page; int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int VARIANT ;
typedef scalar_t__ HRESULT ;


 int DISPATCH_METHOD ;
 int DISPATCH_PROPERTYGET ;
 scalar_t__ DISP_E_BADPARAMCOUNT ;
 int E_INVALIDARG ;
 scalar_t__ SUCCESS ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int ZVAL_NULL (int *) ;
 int ZVAL_STR (int *,int *) ;
 scalar_t__ php_com_do_invoke (TYPE_1__*,int ,int ,int,int *,int ,int *,int) ;
 int php_com_saproxy_create (int *,int *,int *) ;
 int php_com_throw_exception (int ,char*) ;
 int php_com_zval_from_variant (int *,int *,int ) ;

__attribute__((used)) static zval *com_property_read(zend_object *object, zend_string *member, int type, void **cahce_slot, zval *rv)
{
 php_com_dotnet_object *obj;
 VARIANT v;
 HRESULT res;

 ZVAL_NULL(rv);

 obj = (php_com_dotnet_object*) object;

 if (V_VT(&obj->v) == VT_DISPATCH) {
  VariantInit(&v);

  res = php_com_do_invoke(obj, ZSTR_VAL(member), ZSTR_LEN(member),
    DISPATCH_METHOD|DISPATCH_PROPERTYGET, &v, 0, ((void*)0), 1);

  if (res == SUCCESS) {
   php_com_zval_from_variant(rv, &v, obj->code_page);
   VariantClear(&v);
  } else if (res == DISP_E_BADPARAMCOUNT) {
   zval zv;

   ZVAL_STR(&zv, member);
   php_com_saproxy_create(object, rv, &zv);
  }
 } else {
  php_com_throw_exception(E_INVALIDARG, "this variant has no properties");
 }

 return rv;
}
