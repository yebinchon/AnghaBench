
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_bool ;
struct TYPE_4__ {int s; } ;
struct TYPE_5__ {TYPE_1__ key; } ;
typedef TYPE_2__ php_session_rfc1867_progress ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_TRUE ;
 int PS (int ) ;
 int Z_ARRVAL_P (int *) ;
 int * Z_REFVAL (int ) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int http_session_vars ;
 int * zend_hash_str_find (int ,char*,int) ;
 int * zend_symtable_find (int ,int ) ;

__attribute__((used)) static zend_bool php_check_cancel_upload(php_session_rfc1867_progress *progress)
{
 zval *progress_ary, *cancel_upload;

 if ((progress_ary = zend_symtable_find(Z_ARRVAL_P(Z_REFVAL(PS(http_session_vars))), progress->key.s)) == ((void*)0)) {
  return 0;
 }
 if (Z_TYPE_P(progress_ary) != IS_ARRAY) {
  return 0;
 }
 if ((cancel_upload = zend_hash_str_find(Z_ARRVAL_P(progress_ary), "cancel_upload", sizeof("cancel_upload") - 1)) == ((void*)0)) {
  return 0;
 }
 return Z_TYPE_P(cancel_upload) == IS_TRUE;
}
