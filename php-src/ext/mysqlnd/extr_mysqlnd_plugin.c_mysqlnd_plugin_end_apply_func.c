
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {int (* plugin_shutdown ) (struct st_mysqlnd_plugin_header*) ;} ;
struct st_mysqlnd_plugin_header {TYPE_1__ m; } ;


 int ZEND_HASH_APPLY_REMOVE ;
 scalar_t__ Z_PTR_P (int *) ;
 int stub1 (struct st_mysqlnd_plugin_header*) ;

int
mysqlnd_plugin_end_apply_func(zval *el)
{
 struct st_mysqlnd_plugin_header * plugin_header = (struct st_mysqlnd_plugin_header *)Z_PTR_P(el);
 if (plugin_header->m.plugin_shutdown) {
  plugin_header->m.plugin_shutdown(plugin_header);
 }
 return ZEND_HASH_APPLY_REMOVE;
}
