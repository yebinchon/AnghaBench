
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_object ;
struct TYPE_3__ {scalar_t__ id_of_name_cache; scalar_t__ method_cache; int v; int * sink_dispatch; int * typeinfo; } ;
typedef TYPE_1__ php_com_dotnet_object ;


 int FALSE ;
 int FREE_HASHTABLE (scalar_t__) ;
 int IDispatch_Release (int *) ;
 int ITypeInfo_Release (int *) ;
 int VariantClear (int *) ;
 int php_com_object_enable_event_sink (TYPE_1__*,int ) ;
 int zend_hash_destroy (scalar_t__) ;
 int zend_object_std_dtor (int *) ;

void php_com_object_free_storage(zend_object *object)
{
 php_com_dotnet_object *obj = (php_com_dotnet_object*)object;

 if (obj->typeinfo) {
  ITypeInfo_Release(obj->typeinfo);
  obj->typeinfo = ((void*)0);
 }

 if (obj->sink_dispatch) {
  php_com_object_enable_event_sink(obj, FALSE);
  IDispatch_Release(obj->sink_dispatch);
  obj->sink_dispatch = ((void*)0);
 }

 VariantClear(&obj->v);

 if (obj->method_cache) {
  zend_hash_destroy(obj->method_cache);
  FREE_HASHTABLE(obj->method_cache);
 }
 if (obj->id_of_name_cache) {
  zend_hash_destroy(obj->id_of_name_cache);
  FREE_HASHTABLE(obj->id_of_name_cache);
 }

 zend_object_std_dtor(object);
}
