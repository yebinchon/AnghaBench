
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF ;
 int CONF_module_add (char*,int ,int ) ;
 int OSSL_TRACE (int ,char*) ;
 int provider_conf_deinit ;
 int provider_conf_init ;

void ossl_provider_add_conf_module(void)
{
    OSSL_TRACE(CONF, "Adding config module 'providers'\n");
    CONF_module_add("providers", provider_conf_init, provider_conf_deinit);
}
