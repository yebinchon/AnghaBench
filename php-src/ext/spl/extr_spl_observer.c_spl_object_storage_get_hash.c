
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int zval ;
struct TYPE_6__ {int h; int * key; } ;
typedef TYPE_1__ zend_hash_key ;
struct TYPE_8__ {int ce; } ;
struct TYPE_7__ {scalar_t__ fptr_get_hash; TYPE_3__ std; } ;
typedef TYPE_2__ spl_SplObjectStorage ;


 int FAILURE ;
 scalar_t__ IS_STRING ;
 int SUCCESS ;
 int Z_ISUNDEF (int ) ;
 int Z_OBJ_HANDLE_P (int *) ;
 int * Z_STR (int ) ;
 scalar_t__ Z_TYPE (int ) ;
 int spl_ce_RuntimeException ;
 int zend_call_method_with_1_params (TYPE_3__*,int ,scalar_t__*,char*,int *,int *) ;
 int zend_throw_exception (int ,char*,int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static int spl_object_storage_get_hash(zend_hash_key *key, spl_SplObjectStorage *intern, zval *obj) {
 if (intern->fptr_get_hash) {
  zval rv;
  zend_call_method_with_1_params(
   &intern->std, intern->std.ce, &intern->fptr_get_hash, "getHash", &rv, obj);
  if (!Z_ISUNDEF(rv)) {
   if (Z_TYPE(rv) == IS_STRING) {
    key->key = Z_STR(rv);
    return SUCCESS;
   } else {
    zend_throw_exception(spl_ce_RuntimeException, "Hash needs to be a string", 0);

    zval_ptr_dtor(&rv);
    return FAILURE;
   }
  } else {
   return FAILURE;
  }
 } else {
  key->key = ((void*)0);
  key->h = Z_OBJ_HANDLE_P(obj);
  return SUCCESS;
 }
}
