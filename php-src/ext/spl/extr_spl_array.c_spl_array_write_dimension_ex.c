
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
struct TYPE_8__ {int ce; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_long ;
struct TYPE_9__ {scalar_t__ nApplyCount; scalar_t__ fptr_offset_set; } ;
typedef TYPE_2__ spl_array_object ;
typedef int HashTable ;


 int E_WARNING ;
 int SEPARATE_ARG_IF_REF (int *) ;
 int ZVAL_DEREF (int *) ;
 int ZVAL_NULL (int *) ;
 int Z_DVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 int Z_RES_HANDLE_P (int *) ;
 int Z_STR_P (int *) ;
 int Z_TRY_ADDREF_P (int *) ;
 int Z_TYPE_P (int *) ;
 TYPE_2__* spl_array_from_obj (TYPE_1__*) ;
 int * spl_array_get_hash_table (TYPE_2__*) ;
 int zend_call_method_with_2_params (TYPE_1__*,int ,scalar_t__*,char*,int *,int *,int *) ;
 int zend_error (int ,char*) ;
 int zend_hash_index_update (int *,int,int *) ;
 int zend_hash_next_index_insert (int *,int *) ;
 int zend_symtable_update_ind (int *,int ,int *) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void spl_array_write_dimension_ex(int check_inherited, zend_object *object, zval *offset, zval *value)
{
 spl_array_object *intern = spl_array_from_obj(object);
 zend_long index;
 HashTable *ht;

 if (check_inherited && intern->fptr_offset_set) {
  zval tmp;

  if (!offset) {
   ZVAL_NULL(&tmp);
   offset = &tmp;
  } else {
   SEPARATE_ARG_IF_REF(offset);
  }
  zend_call_method_with_2_params(object, object->ce, &intern->fptr_offset_set, "offsetSet", ((void*)0), offset, value);
  zval_ptr_dtor(offset);
  return;
 }

 if (intern->nApplyCount > 0) {
  zend_error(E_WARNING, "Modification of ArrayObject during sorting is prohibited");
  return;
 }

 Z_TRY_ADDREF_P(value);
 if (!offset) {
  ht = spl_array_get_hash_table(intern);
  zend_hash_next_index_insert(ht, value);
  return;
 }

try_again:
 switch (Z_TYPE_P(offset)) {
  case 129:
   ht = spl_array_get_hash_table(intern);
   zend_symtable_update_ind(ht, Z_STR_P(offset), value);
   return;
  case 135:
   index = (zend_long)Z_DVAL_P(offset);
   goto num_index;
  case 130:
   index = Z_RES_HANDLE_P(offset);
   goto num_index;
  case 134:
   index = 0;
   goto num_index;
  case 128:
   index = 1;
   goto num_index;
  case 133:
   index = Z_LVAL_P(offset);
num_index:
   ht = spl_array_get_hash_table(intern);
   zend_hash_index_update(ht, index, value);
   return;
  case 132:
   ht = spl_array_get_hash_table(intern);
   zend_hash_next_index_insert(ht, value);
   return;
  case 131:
   ZVAL_DEREF(offset);
   goto try_again;
  default:
   zend_error(E_WARNING, "Illegal offset type");
   zval_ptr_dtor(value);
   return;
 }
}
