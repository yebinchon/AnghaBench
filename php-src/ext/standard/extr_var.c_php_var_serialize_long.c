
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_long ;
typedef int smart_str ;


 int smart_str_append_long (int *,int ) ;
 int smart_str_appendc (int *,char) ;
 int smart_str_appendl (int *,char*,int) ;

__attribute__((used)) static inline void php_var_serialize_long(smart_str *buf, zend_long val)
{
 smart_str_appendl(buf, "i:", 2);
 smart_str_append_long(buf, val);
 smart_str_appendc(buf, ';');
}
