
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int smart_str ;


 scalar_t__ PG (int ) ;
 int PHP_DOUBLE_MAX_LENGTH ;
 int PHP_JSON_PRESERVE_ZERO_FRACTION ;
 int php_gcvt (double,int,char,char,char*) ;
 int serialize_precision ;
 int smart_str_appendl (int *,char*,size_t) ;
 int * strchr (char*,char) ;
 size_t strlen (char*) ;

__attribute__((used)) static inline void php_json_encode_double(smart_str *buf, double d, int options)
{
 size_t len;
 char num[PHP_DOUBLE_MAX_LENGTH];

 php_gcvt(d, (int)PG(serialize_precision), '.', 'e', num);
 len = strlen(num);
 if (options & PHP_JSON_PRESERVE_ZERO_FRACTION && strchr(num, '.') == ((void*)0) && len < PHP_DOUBLE_MAX_LENGTH - 2) {
  num[len++] = '.';
  num[len++] = '0';
  num[len] = '\0';
 }
 smart_str_appendl(buf, num, len);
}
