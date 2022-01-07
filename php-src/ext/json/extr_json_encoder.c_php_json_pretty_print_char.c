
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smart_str ;


 int PHP_JSON_PRETTY_PRINT ;
 int smart_str_appendc (int *,char) ;

__attribute__((used)) static inline void php_json_pretty_print_char(smart_str *buf, int options, char c)
{
 if (options & PHP_JSON_PRETTY_PRINT) {
  smart_str_appendc(buf, c);
 }
}
