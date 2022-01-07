
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
typedef int zend_object ;
struct TYPE_3__ {int code_page; int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int VARIANT ;
typedef int LONG ;


 int DISPATCH_METHOD ;
 int DISPATCH_PROPERTYGET ;
 int DISPID_VALUE ;
 int E_INVALIDARG ;
 scalar_t__ SUCCESS ;
 int SafeArrayGetDim (int ) ;
 scalar_t__ VT_DISPATCH ;
 int V_ARRAY (int *) ;
 scalar_t__ V_ISARRAY (int *) ;
 scalar_t__ V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int ZVAL_NULL (int *) ;
 scalar_t__ Z_LVAL_P (int *) ;
 int convert_to_long (int *) ;
 scalar_t__ php_com_do_invoke_by_id (TYPE_1__*,int ,int,int *,int,int *,int ,int ) ;
 scalar_t__ php_com_safearray_get_elem (int *,int *,int ) ;
 int php_com_saproxy_create (int *,int *,int *) ;
 int php_com_throw_exception (int ,char*) ;
 int php_com_wrap_variant (int *,int *,int ) ;
 int php_com_zval_from_variant (int *,int *,int ) ;

__attribute__((used)) static zval *com_read_dimension(zend_object *object, zval *offset, int type, zval *rv)
{
 php_com_dotnet_object *obj;
 VARIANT v;

 ZVAL_NULL(rv);

 obj = (php_com_dotnet_object*) object;

 if (V_VT(&obj->v) == VT_DISPATCH) {
  VariantInit(&v);

  if (SUCCESS == php_com_do_invoke_by_id(obj, DISPID_VALUE,
    DISPATCH_METHOD|DISPATCH_PROPERTYGET, &v, 1, offset, 0, 0)) {
   php_com_zval_from_variant(rv, &v, obj->code_page);
   VariantClear(&v);
  }
 } else if (V_ISARRAY(&obj->v)) {
  convert_to_long(offset);

  if (SafeArrayGetDim(V_ARRAY(&obj->v)) == 1) {
   if (php_com_safearray_get_elem(&obj->v, &v, (LONG)Z_LVAL_P(offset))) {
    php_com_wrap_variant(rv, &v, obj->code_page);
    VariantClear(&v);
   }
  } else {
   php_com_saproxy_create(object, rv, offset);
  }

 } else {
  php_com_throw_exception(E_INVALIDARG, "this variant is not an array type");
 }

 return rv;
}
