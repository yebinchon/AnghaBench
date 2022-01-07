
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef int zend_object ;
struct TYPE_3__ {int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int VARIANT ;


 int DISPATCH_PROPERTYPUT ;
 int DISPATCH_PROPERTYPUTREF ;
 int E_INVALIDARG ;
 scalar_t__ SUCCESS ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 scalar_t__ php_com_do_invoke (TYPE_1__*,int ,int ,int,int *,int,int *,int ) ;
 int php_com_throw_exception (int ,char*) ;

__attribute__((used)) static zval *com_property_write(zend_object *object, zend_string *member, zval *value, void **cache_slot)
{
 php_com_dotnet_object *obj;
 VARIANT v;

 obj = (php_com_dotnet_object*) object;

 if (V_VT(&obj->v) == VT_DISPATCH) {
  VariantInit(&v);

  if (SUCCESS == php_com_do_invoke(obj, ZSTR_VAL(member), ZSTR_LEN(member),
    DISPATCH_PROPERTYPUT|DISPATCH_PROPERTYPUTREF, &v, 1, value, 0)) {
   VariantClear(&v);
  }
 } else {
  php_com_throw_exception(E_INVALIDARG, "this variant has no properties");
 }
 return value;
}
