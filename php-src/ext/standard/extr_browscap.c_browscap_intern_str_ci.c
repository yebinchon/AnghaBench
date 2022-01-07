
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_bool ;
struct TYPE_3__ {int str_interned; } ;
typedef TYPE_1__ browscap_parser_ctx ;


 int ALLOCA_FLAG (int ) ;
 int ZSTR_ALLOCA_ALLOC (int *,int ,int ) ;
 int ZSTR_ALLOCA_FREE (int *,int ) ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int use_heap ;
 int zend_hash_add_new_ptr (int *,int *,int *) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int * zend_new_interned_string (int *) ;
 int zend_str_tolower_copy (int ,int ,int ) ;
 int zend_string_addref (int *) ;
 int * zend_string_dup (int *,int ) ;

__attribute__((used)) static zend_string *browscap_intern_str_ci(
  browscap_parser_ctx *ctx, zend_string *str, zend_bool persistent) {
 zend_string *lcname;
 zend_string *interned;
 ALLOCA_FLAG(use_heap);

 ZSTR_ALLOCA_ALLOC(lcname, ZSTR_LEN(str), use_heap);
 zend_str_tolower_copy(ZSTR_VAL(lcname), ZSTR_VAL(str), ZSTR_LEN(str));
 interned = zend_hash_find_ptr(&ctx->str_interned, lcname);

 if (interned) {
  zend_string_addref(interned);
 } else {
  interned = zend_string_dup(lcname, persistent);
  if (persistent) {
   interned = zend_new_interned_string(interned);
  }
  zend_hash_add_new_ptr(&ctx->str_interned, interned, interned);
 }

 ZSTR_ALLOCA_FREE(lcname, use_heap);
 return interned;
}
