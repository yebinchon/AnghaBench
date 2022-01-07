
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONF ;
 int CONF_module_add (char*,int ,int ) ;
 int OSSL_TRACE (int ,char*) ;
 int alg_module_init ;

void EVP_add_alg_module(void)
{
    OSSL_TRACE(CONF, "Adding config module 'alg_section'\n");
    CONF_module_add("alg_section", alg_module_init, 0);
}
