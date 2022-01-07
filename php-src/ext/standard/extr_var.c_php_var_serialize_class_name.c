
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_bool ;
typedef int smart_str ;


 int PHP_CLASS_ATTRIBUTES ;
 int PHP_CLEANUP_CLASS_ATTRIBUTES () ;
 int PHP_SET_CLASS_ATTRIBUTES (int *) ;
 int ZSTR_LEN (int ) ;
 int class_name ;
 int incomplete_class ;
 int smart_str_append (int *,int ) ;
 int smart_str_append_unsigned (int *,int ) ;
 int smart_str_appendl (int *,char*,int) ;

__attribute__((used)) static inline zend_bool php_var_serialize_class_name(smart_str *buf, zval *struc)
{
 PHP_CLASS_ATTRIBUTES;

 PHP_SET_CLASS_ATTRIBUTES(struc);
 smart_str_appendl(buf, "O:", 2);
 smart_str_append_unsigned(buf, ZSTR_LEN(class_name));
 smart_str_appendl(buf, ":\"", 2);
 smart_str_append(buf, class_name);
 smart_str_appendl(buf, "\":", 2);
 PHP_CLEANUP_CLASS_ATTRIBUTES();
 return incomplete_class;
}
