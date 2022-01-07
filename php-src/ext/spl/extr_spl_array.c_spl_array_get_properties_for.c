
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zend_prop_purpose ;
typedef int zend_object ;
typedef int zend_bool ;
struct TYPE_4__ {int ar_flags; } ;
typedef TYPE_1__ spl_array_object ;
typedef int HashTable ;


 int GC_ADDREF (int *) ;
 int SPL_ARRAY_STD_PROP_LIST ;



 TYPE_1__* spl_array_from_obj (int *) ;
 int * spl_array_get_hash_table (TYPE_1__*) ;
 int * zend_array_dup (int *) ;
 int * zend_std_get_properties_for (int *,int) ;

__attribute__((used)) static HashTable *spl_array_get_properties_for(zend_object *object, zend_prop_purpose purpose)
{
 spl_array_object *intern = spl_array_from_obj(object);
 HashTable *ht;
 zend_bool dup;

 if (intern->ar_flags & SPL_ARRAY_STD_PROP_LIST) {
  return zend_std_get_properties_for(object, purpose);
 }






 switch (purpose) {
  case 130:
   dup = 1;
   break;
  case 128:
  case 129:
   dup = 0;
   break;
  default:
   return zend_std_get_properties_for(object, purpose);
 }

 ht = spl_array_get_hash_table(intern);
 if (dup) {
  ht = zend_array_dup(ht);
 } else {
  GC_ADDREF(ht);
 }
 return ht;
}
