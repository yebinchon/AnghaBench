
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_string ;
typedef int smart_str ;


 scalar_t__ IS_ARRAY ;
 scalar_t__ IS_STRING ;
 int ZSTR_VAL (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int smart_str_append_printf (int *,char*,char*,char const*,char*,...) ;
 int zend_tmp_string_release (int *) ;
 char* zend_zval_type_name (int *) ;
 int * zval_get_tmp_string (int *,int **) ;

__attribute__((used)) static void _const_string(smart_str *str, char *name, zval *value, char *indent)
{
 const char *type = zend_zval_type_name(value);

 if (Z_TYPE_P(value) == IS_ARRAY) {
  smart_str_append_printf(str, "%s    Constant [ %s %s ] { Array }\n",
      indent, type, name);
 } else if (Z_TYPE_P(value) == IS_STRING) {
  smart_str_append_printf(str, "%s    Constant [ %s %s ] { %s }\n",
      indent, type, name, Z_STRVAL_P(value));
 } else {
  zend_string *tmp_value_str;
  zend_string *value_str = zval_get_tmp_string(value, &tmp_value_str);
  smart_str_append_printf(str, "%s    Constant [ %s %s ] { %s }\n",
      indent, type, name, ZSTR_VAL(value_str));
  zend_tmp_string_release(tmp_value_str);
 }
}
