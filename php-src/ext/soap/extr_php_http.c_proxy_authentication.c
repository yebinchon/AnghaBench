
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int zval ;
typedef int zend_string ;
struct TYPE_8__ {int * s; int member_0; } ;
typedef TYPE_1__ smart_str ;


 scalar_t__ IS_STRING ;
 int ZSTR_LEN (int *) ;
 scalar_t__ ZSTR_VAL (int *) ;
 int Z_OBJPROP_P (int *) ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int * php_base64_encode (unsigned char*,int ) ;
 int smart_str_0 (TYPE_1__*) ;
 int smart_str_append_const (TYPE_1__*,char*) ;
 int smart_str_appendc (TYPE_1__*,char) ;
 int smart_str_appendl (TYPE_1__*,char*,int ) ;
 int smart_str_free (TYPE_1__*) ;
 int * zend_hash_str_find (int ,char*,int) ;
 int zend_string_release_ex (int *,int ) ;

int proxy_authentication(zval* this_ptr, smart_str* soap_headers)
{
 zval *login, *password;

 if ((login = zend_hash_str_find(Z_OBJPROP_P(this_ptr), "_proxy_login", sizeof("_proxy_login")-1)) != ((void*)0) &&
     Z_TYPE_P(login) == IS_STRING) {
  zend_string *buf;
  smart_str auth = {0};

  smart_str_appendl(&auth, Z_STRVAL_P(login), Z_STRLEN_P(login));
  smart_str_appendc(&auth, ':');
  if ((password = zend_hash_str_find(Z_OBJPROP_P(this_ptr), "_proxy_password", sizeof("_proxy_password")-1)) != ((void*)0) &&
      Z_TYPE_P(password) == IS_STRING) {
   smart_str_appendl(&auth, Z_STRVAL_P(password), Z_STRLEN_P(password));
  }
  smart_str_0(&auth);
  buf = php_base64_encode((unsigned char*)ZSTR_VAL(auth.s), ZSTR_LEN(auth.s));
  smart_str_append_const(soap_headers, "Proxy-Authorization: Basic ");
  smart_str_appendl(soap_headers, (char*)ZSTR_VAL(buf), ZSTR_LEN(buf));
  smart_str_append_const(soap_headers, "\r\n");
  zend_string_release_ex(buf, 0);
  smart_str_free(&auth);
  return 1;
 }
 return 0;
}
