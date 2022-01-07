
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int mysqlnd_registered_plugins ;
 int zend_hash_init (int *,int,int *,int *,int ) ;

void
mysqlnd_plugin_subsystem_init(void)
{
 zend_hash_init(&mysqlnd_registered_plugins, 4 , ((void*)0) , ((void*)0) , TRUE );
}
