
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF_module_add (char*,int ,int ) ;
 int ssl_module_free ;
 int ssl_module_init ;

void conf_add_ssl_module(void)
{
    CONF_module_add("ssl_conf", ssl_module_init, ssl_module_free);
}
