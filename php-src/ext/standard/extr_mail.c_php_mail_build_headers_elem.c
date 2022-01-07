
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int smart_str ;


 int E_WARNING ;


 int SUCCESS ;
 int ZSTR_VAL (int *) ;
 int Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 int php_error_docref (int *,int ,char*,int ,...) ;
 int php_mail_build_headers_check_field_name (int *) ;
 int php_mail_build_headers_check_field_value (int *) ;
 int php_mail_build_headers_elems (int *,int *,int *) ;
 int smart_str_append (int *,int *) ;
 int smart_str_appendl (int *,char*,int) ;
 int smart_str_appends (int *,int ) ;

__attribute__((used)) static void php_mail_build_headers_elem(smart_str *s, zend_string *key, zval *val)
{
 switch(Z_TYPE_P(val)) {
  case 128:
   if (php_mail_build_headers_check_field_name(key) != SUCCESS) {
    php_error_docref(((void*)0), E_WARNING, "Header field name (%s) contains invalid chars", ZSTR_VAL(key));
    return;
   }
   if (php_mail_build_headers_check_field_value(val) != SUCCESS) {
    php_error_docref(((void*)0), E_WARNING, "Header field value (%s => %s) contains invalid chars or format", ZSTR_VAL(key), Z_STRVAL_P(val));
    return;
   }
   smart_str_append(s, key);
   smart_str_appendl(s, ": ", 2);
   smart_str_appends(s, Z_STRVAL_P(val));
   smart_str_appendl(s, "\r\n", 2);
   break;
  case 129:
   php_mail_build_headers_elems(s, key, val);
   break;
  default:
   php_error_docref(((void*)0), E_WARNING, "headers array elements must be string or array (%s)", ZSTR_VAL(key));
 }
}
