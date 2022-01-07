
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef int zend_string ;
typedef int zend_long ;
typedef int smart_str ;


 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int buffer_append_spaces (int *,int) ;
 int * php_addcslashes (int *,char*,int) ;
 int * php_str_to_str (int ,int ,char*,int,char*,int) ;
 int php_var_export_ex (int *,int,int *) ;
 int smart_str_append (int *,int *) ;
 int smart_str_append_long (int *,int ) ;
 int smart_str_appendc (int *,char) ;
 int smart_str_appendl (int *,char*,int) ;
 int zend_string_free (int *) ;

__attribute__((used)) static void php_array_element_export(zval *zv, zend_ulong index, zend_string *key, int level, smart_str *buf)
{
 if (key == ((void*)0)) {
  buffer_append_spaces(buf, level+1);
  smart_str_append_long(buf, (zend_long) index);
  smart_str_appendl(buf, " => ", 4);

 } else {
  zend_string *tmp_str;
  zend_string *ckey = php_addcslashes(key, "'\\", 2);
  tmp_str = php_str_to_str(ZSTR_VAL(ckey), ZSTR_LEN(ckey), "\0", 1, "' . \"\\0\" . '", 12);

  buffer_append_spaces(buf, level + 1);

  smart_str_appendc(buf, '\'');
  smart_str_append(buf, tmp_str);
  smart_str_appendl(buf, "' => ", 5);

  zend_string_free(ckey);
  zend_string_free(tmp_str);
 }
 php_var_export_ex(zv, level + 2, buf);

 smart_str_appendc(buf, ',');
 smart_str_appendc(buf, '\n');
}
