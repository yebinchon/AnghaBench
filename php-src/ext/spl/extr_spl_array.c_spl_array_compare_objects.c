
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {int * properties; } ;
struct TYPE_6__ {TYPE_1__ std; } ;
typedef TYPE_2__ spl_array_object ;
typedef int HashTable ;


 int ZEND_COMPARE_OBJECTS_FALLBACK (int *,int *) ;
 TYPE_2__* Z_SPLARRAY_P (int *) ;
 int * spl_array_get_hash_table (TYPE_2__*) ;
 int zend_compare_symbol_tables (int *,int *) ;
 int zend_std_compare_objects (int *,int *) ;

__attribute__((used)) static int spl_array_compare_objects(zval *o1, zval *o2)
{
 HashTable *ht1,
      *ht2;
 spl_array_object *intern1,
      *intern2;
 int result = 0;

 ZEND_COMPARE_OBJECTS_FALLBACK(o1, o2);

 intern1 = Z_SPLARRAY_P(o1);
 intern2 = Z_SPLARRAY_P(o2);
 ht1 = spl_array_get_hash_table(intern1);
 ht2 = spl_array_get_hash_table(intern2);

 result = zend_compare_symbol_tables(ht1, ht2);

 if (result == 0 &&
   !(ht1 == intern1->std.properties && ht2 == intern2->std.properties)) {
  result = zend_std_compare_objects(o1, o2);
 }
 return result;
}
