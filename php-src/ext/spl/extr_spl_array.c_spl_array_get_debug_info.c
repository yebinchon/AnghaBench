
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_7__ {int * handlers; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_class_entry ;
struct TYPE_9__ {int * properties; } ;
struct TYPE_8__ {int ar_flags; int array; TYPE_6__ std; } ;
typedef TYPE_2__ spl_array_object ;
typedef int copy_ctor_func_t ;
typedef int HashTable ;


 int SPL_ARRAY_IS_SELF ;
 int Z_TRY_ADDREF_P (int *) ;
 int rebuild_object_properties (TYPE_6__*) ;
 TYPE_2__* spl_array_from_obj (TYPE_1__*) ;
 int * spl_ce_ArrayIterator ;
 int * spl_ce_ArrayObject ;
 int * spl_gen_private_prop_name (int *,char*,int) ;
 int spl_handler_ArrayIterator ;
 int zend_hash_copy (int *,int *,int ) ;
 scalar_t__ zend_hash_num_elements (int *) ;
 int * zend_new_array (scalar_t__) ;
 int zend_string_release_ex (int *,int ) ;
 int zend_symtable_update (int *,int *,int *) ;
 scalar_t__ zval_add_ref ;

__attribute__((used)) static HashTable* spl_array_get_debug_info(zend_object *obj, int *is_temp)
{
 zval *storage;
 zend_string *zname;
 zend_class_entry *base;
 spl_array_object *intern = spl_array_from_obj(obj);

 if (!intern->std.properties) {
  rebuild_object_properties(&intern->std);
 }

 if (intern->ar_flags & SPL_ARRAY_IS_SELF) {
  *is_temp = 0;
  return intern->std.properties;
 } else {
  HashTable *debug_info;
  *is_temp = 1;

  debug_info = zend_new_array(zend_hash_num_elements(intern->std.properties) + 1);
  zend_hash_copy(debug_info, intern->std.properties, (copy_ctor_func_t) zval_add_ref);

  storage = &intern->array;
  Z_TRY_ADDREF_P(storage);

  base = obj->handlers == &spl_handler_ArrayIterator
   ? spl_ce_ArrayIterator : spl_ce_ArrayObject;
  zname = spl_gen_private_prop_name(base, "storage", sizeof("storage")-1);
  zend_symtable_update(debug_info, zname, storage);
  zend_string_release_ex(zname, 0);

  return debug_info;
 }
}
