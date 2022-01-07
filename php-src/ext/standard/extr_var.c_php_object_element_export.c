
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_ulong ;
typedef int zend_string ;
typedef int zend_long ;
typedef int smart_str ;


 int buffer_append_spaces (int *,int) ;
 int * php_addcslashes_str (char const*,size_t,char*,int) ;
 int php_var_export_ex (int *,int,int *) ;
 int smart_str_append (int *,int *) ;
 int smart_str_append_long (int *,int ) ;
 int smart_str_appendc (int *,char) ;
 int smart_str_appendl (int *,char*,int) ;
 int zend_string_release_ex (int *,int ) ;
 int zend_unmangle_property_name_ex (int *,char const**,char const**,size_t*) ;

__attribute__((used)) static void php_object_element_export(zval *zv, zend_ulong index, zend_string *key, int level, smart_str *buf)
{
 buffer_append_spaces(buf, level + 2);
 if (key != ((void*)0)) {
  const char *class_name, *prop_name;
  size_t prop_name_len;
  zend_string *pname_esc;

  zend_unmangle_property_name_ex(key, &class_name, &prop_name, &prop_name_len);
  pname_esc = php_addcslashes_str(prop_name, prop_name_len, "'\\", 2);

  smart_str_appendc(buf, '\'');
  smart_str_append(buf, pname_esc);
  smart_str_appendc(buf, '\'');
  zend_string_release_ex(pname_esc, 0);
 } else {
  smart_str_append_long(buf, (zend_long) index);
 }
 smart_str_appendl(buf, " => ", 4);
 php_var_export_ex(zv, level + 2, buf);
 smart_str_appendc(buf, ',');
 smart_str_appendc(buf, '\n');
}
