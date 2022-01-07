
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zend_string ;
typedef scalar_t__ zend_bool ;
struct TYPE_3__ {int str_interned; } ;
typedef TYPE_1__ browscap_parser_ctx ;


 int zend_hash_add_new_ptr (int *,int *,int *) ;
 int * zend_hash_find_ptr (int *,int *) ;
 int * zend_new_interned_string (int *) ;
 int zend_string_addref (int *) ;
 int * zend_string_copy (int *) ;

__attribute__((used)) static zend_string *browscap_intern_str(
  browscap_parser_ctx *ctx, zend_string *str, zend_bool persistent) {
 zend_string *interned = zend_hash_find_ptr(&ctx->str_interned, str);
 if (interned) {
  zend_string_addref(interned);
 } else {
  interned = zend_string_copy(str);
  if (persistent) {
   interned = zend_new_interned_string(str);
  }
  zend_hash_add_new_ptr(&ctx->str_interned, interned, interned);
 }

 return interned;
}
