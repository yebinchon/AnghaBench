
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smart_str ;


 int smart_str_append_unsigned (int *,size_t) ;
 int smart_str_appendl (int *,char*,int) ;

__attribute__((used)) static inline void php_var_serialize_string(smart_str *buf, char *str, size_t len)
{
 smart_str_appendl(buf, "s:", 2);
 smart_str_append_unsigned(buf, len);
 smart_str_appendl(buf, ":\"", 2);
 smart_str_appendl(buf, str, len);
 smart_str_appendl(buf, "\";", 2);
}
