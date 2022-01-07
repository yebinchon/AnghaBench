
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_mysqlnd_plugin_header {int dummy; } ;


 int mysqlnd_caching_sha2_auth_plugin ;
 int mysqlnd_native_auth_plugin ;
 int mysqlnd_pam_authentication_plugin ;
 int mysqlnd_plugin_register_ex (struct st_mysqlnd_plugin_header*) ;
 int mysqlnd_sha256_authentication_plugin ;

void
mysqlnd_register_builtin_authentication_plugins(void)
{
 mysqlnd_plugin_register_ex((struct st_mysqlnd_plugin_header *) &mysqlnd_native_auth_plugin);
 mysqlnd_plugin_register_ex((struct st_mysqlnd_plugin_header *) &mysqlnd_pam_authentication_plugin);




}
