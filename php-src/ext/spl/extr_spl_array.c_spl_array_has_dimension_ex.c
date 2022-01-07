
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int zval ;
struct TYPE_9__ {int ce; } ;
typedef TYPE_1__ zend_object ;
typedef int zend_long ;
typedef int zend_bool ;
struct TYPE_10__ {scalar_t__ fptr_offset_get; scalar_t__ fptr_offset_has; } ;
typedef TYPE_2__ spl_array_object ;
typedef int HashTable ;


 int BP_VAR_R ;
 int E_WARNING ;



 scalar_t__ IS_NULL ;




 int SEPARATE_ARG_IF_REF (int *) ;
 int ZVAL_DEREF (int *) ;
 int Z_DVAL_P (int *) ;
 int Z_LVAL_P (int *) ;
 int Z_RES_HANDLE_P (int *) ;
 int Z_STR_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 TYPE_2__* spl_array_from_obj (TYPE_1__*) ;
 int * spl_array_get_hash_table (TYPE_2__*) ;
 int * spl_array_read_dimension_ex (int,TYPE_1__*,int *,int ,int *) ;
 int zend_call_method_with_1_params (TYPE_1__*,int ,scalar_t__*,char*,int *,int *) ;
 int zend_error (int ,char*) ;
 int * zend_hash_index_find (int *,int) ;
 int zend_is_true (int *) ;
 int * zend_symtable_find (int *,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_array_has_dimension_ex(int check_inherited, zend_object *object, zval *offset, int check_empty)
{
 spl_array_object *intern = spl_array_from_obj(object);
 zend_long index;
 zval rv, *value = ((void*)0), *tmp;

 if (check_inherited && intern->fptr_offset_has) {
  SEPARATE_ARG_IF_REF(offset);
  zend_call_method_with_1_params(object, object->ce, &intern->fptr_offset_has, "offsetExists", &rv, offset);
  zval_ptr_dtor(offset);

  if (zend_is_true(&rv)) {
   zval_ptr_dtor(&rv);
   if (check_empty != 1) {
    return 1;
   } else if (intern->fptr_offset_get) {
    value = spl_array_read_dimension_ex(1, object, offset, BP_VAR_R, &rv);
   }
  } else {
   zval_ptr_dtor(&rv);
   return 0;
  }
 }

 if (!value) {
  HashTable *ht = spl_array_get_hash_table(intern);

try_again:
  switch (Z_TYPE_P(offset)) {
   case 129:
    if ((tmp = zend_symtable_find(ht, Z_STR_P(offset))) != ((void*)0)) {
     if (check_empty == 2) {
      return 1;
     }
    } else {
     return 0;
    }
    break;

   case 134:
    index = (zend_long)Z_DVAL_P(offset);
    goto num_index;
   case 130:
    index = Z_RES_HANDLE_P(offset);
    goto num_index;
   case 133:
    index = 0;
    goto num_index;
   case 128:
    index = 1;
    goto num_index;
   case 132:
    index = Z_LVAL_P(offset);
num_index:
    if ((tmp = zend_hash_index_find(ht, index)) != ((void*)0)) {
     if (check_empty == 2) {
      return 1;
     }
    } else {
     return 0;
    }
    break;
   case 131:
    ZVAL_DEREF(offset);
    goto try_again;
   default:
    zend_error(E_WARNING, "Illegal offset type");
    return 0;
  }

  if (check_empty && check_inherited && intern->fptr_offset_get) {
   value = spl_array_read_dimension_ex(1, object, offset, BP_VAR_R, &rv);
  } else {
   value = tmp;
  }
 }

 {
  zend_bool result = check_empty ? zend_is_true(value) : Z_TYPE_P(value) != IS_NULL;
  if (value == &rv) {
   zval_ptr_dtor(&rv);
  }
  return result;
 }
}
