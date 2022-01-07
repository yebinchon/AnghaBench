
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_mysqlnd_plugin_header {int dummy; } ;


 int mysqlnd_plugin_charsets_plugin ;
 int mysqlnd_plugin_register_ex (struct st_mysqlnd_plugin_header*) ;

void
mysqlnd_charsets_plugin_register(void)
{
 mysqlnd_plugin_register_ex((struct st_mysqlnd_plugin_header *) &mysqlnd_plugin_charsets_plugin);
}
