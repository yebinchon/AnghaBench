
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;


 int PG (int ) ;
 int include_path ;
 int * php_resolve_path (char const*,size_t,int ) ;

__attribute__((used)) static zend_string *php_resolve_path_for_zend(const char *filename, size_t filename_len)
{
 return php_resolve_path(filename, filename_len, PG(include_path));
}
