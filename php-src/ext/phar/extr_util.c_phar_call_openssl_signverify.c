
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
typedef scalar_t__ zend_off_t ;
typedef int zend_fcall_info_cache ;
struct TYPE_4__ {int param_count; int * retval; int * params; } ;
typedef TYPE_1__ zend_fcall_info ;
typedef int php_stream ;


 int FAILURE ;



 int SUCCESS ;
 int ZVAL_EMPTY_STRING (int *) ;
 int ZVAL_NEW_REF (int *,int *) ;
 int ZVAL_STR (int *,int *) ;
 int ZVAL_STRINGL (int *,char*,size_t) ;
 int ZVAL_UNREF (int *) ;
 int Z_ADDREF (int ) ;
 int Z_DELREF (int ) ;
 int Z_LVAL (int ) ;
 size_t Z_STRLEN (int ) ;
 int Z_STRVAL (int ) ;
 int Z_TYPE (int ) ;
 char* estrndup (int ,size_t) ;
 int * php_stream_copy_to_mem (int *,size_t,int ) ;
 int php_stream_rewind (int *) ;
 int zend_call_function (TYPE_1__*,int *) ;
 int zend_fcall_info_init (int *,int ,TYPE_1__*,int *,int *,int *) ;
 int zval_ptr_dtor (int *) ;
 int zval_ptr_dtor_str (int *) ;

__attribute__((used)) static int phar_call_openssl_signverify(int is_sign, php_stream *fp, zend_off_t end, char *key, size_t key_len, char **signature, size_t *signature_len)
{
 zend_fcall_info fci;
 zend_fcall_info_cache fcc;
 zval retval, zp[3], openssl;
 zend_string *str;

 ZVAL_STRINGL(&openssl, is_sign ? "openssl_sign" : "openssl_verify", is_sign ? sizeof("openssl_sign")-1 : sizeof("openssl_verify")-1);
 ZVAL_STRINGL(&zp[1], *signature, *signature_len);
 ZVAL_STRINGL(&zp[2], key, key_len);
 php_stream_rewind(fp);
 str = php_stream_copy_to_mem(fp, (size_t) end, 0);
 if (str) {
  ZVAL_STR(&zp[0], str);
 } else {
  ZVAL_EMPTY_STRING(&zp[0]);
 }

 if ((size_t)end != Z_STRLEN(zp[0])) {
  zval_ptr_dtor_str(&zp[0]);
  zval_ptr_dtor_str(&zp[1]);
  zval_ptr_dtor_str(&zp[2]);
  zval_ptr_dtor_str(&openssl);
  return FAILURE;
 }

 if (FAILURE == zend_fcall_info_init(&openssl, 0, &fci, &fcc, ((void*)0), ((void*)0))) {
  zval_ptr_dtor_str(&zp[0]);
  zval_ptr_dtor_str(&zp[1]);
  zval_ptr_dtor_str(&zp[2]);
  zval_ptr_dtor_str(&openssl);
  return FAILURE;
 }

 fci.param_count = 3;
 fci.params = zp;
 Z_ADDREF(zp[0]);
 if (is_sign) {
  ZVAL_NEW_REF(&zp[1], &zp[1]);
 } else {
  Z_ADDREF(zp[1]);
 }
 Z_ADDREF(zp[2]);

 fci.retval = &retval;

 if (FAILURE == zend_call_function(&fci, &fcc)) {
  zval_ptr_dtor_str(&zp[0]);
  zval_ptr_dtor(&zp[1]);
  zval_ptr_dtor_str(&zp[2]);
  zval_ptr_dtor_str(&openssl);
  return FAILURE;
 }

 zval_ptr_dtor_str(&openssl);
 Z_DELREF(zp[0]);

 if (is_sign) {
  ZVAL_UNREF(&zp[1]);
 } else {
  Z_DELREF(zp[1]);
 }
 Z_DELREF(zp[2]);

 zval_ptr_dtor_str(&zp[0]);
 zval_ptr_dtor_str(&zp[2]);

 switch (Z_TYPE(retval)) {
  default:
  case 129:
   zval_ptr_dtor(&zp[1]);
   if (1 == Z_LVAL(retval)) {
    return SUCCESS;
   }
   return FAILURE;
  case 128:
   *signature = estrndup(Z_STRVAL(zp[1]), Z_STRLEN(zp[1]));
   *signature_len = Z_STRLEN(zp[1]);
   zval_ptr_dtor(&zp[1]);
   return SUCCESS;
  case 130:
   zval_ptr_dtor(&zp[1]);
   return FAILURE;
 }
}
