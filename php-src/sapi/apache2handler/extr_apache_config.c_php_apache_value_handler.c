
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmd_parms ;


 int PHP_INI_PERDIR ;
 char const* real_value_hnd (int *,void*,char const*,char const*,int ) ;

__attribute__((used)) static const char *php_apache_value_handler(cmd_parms *cmd, void *dummy, const char *name, const char *value)
{
 return real_value_hnd(cmd, dummy, name, value, PHP_INI_PERDIR);
}
