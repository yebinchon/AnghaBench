
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_object ;
struct TYPE_3__ {int v; } ;
typedef TYPE_1__ php_com_dotnet_object ;
typedef int DISPID ;


 scalar_t__ SUCCEEDED (int ) ;
 scalar_t__ VT_DISPATCH ;
 scalar_t__ V_VT (int *) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int php_com_get_id_of_name (TYPE_1__*,int ,int ,int *) ;

__attribute__((used)) static int com_property_exists(zend_object *object, zend_string *member, int check_empty, void **cache_slot)
{
 DISPID dispid;
 php_com_dotnet_object *obj;

 obj = (php_com_dotnet_object*) object;

 if (V_VT(&obj->v) == VT_DISPATCH) {
  if (SUCCEEDED(php_com_get_id_of_name(obj, ZSTR_VAL(member), ZSTR_LEN(member), &dispid))) {

   return 1;
  }
 } else {

 }

 return 0;
}
