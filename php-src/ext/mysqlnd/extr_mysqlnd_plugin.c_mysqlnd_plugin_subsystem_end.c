
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mysqlnd_plugin_end_apply_func ;
 int mysqlnd_registered_plugins ;
 int zend_hash_apply (int *,int ) ;
 int zend_hash_destroy (int *) ;

void
mysqlnd_plugin_subsystem_end(void)
{
 zend_hash_apply(&mysqlnd_registered_plugins, mysqlnd_plugin_end_apply_func);
 zend_hash_destroy(&mysqlnd_registered_plugins);
}
