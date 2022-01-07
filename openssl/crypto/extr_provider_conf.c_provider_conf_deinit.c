
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CONF_IMODULE ;


 int CONF ;
 int OSSL_TRACE (int ,char*) ;
 int * activated_providers ;
 int ossl_provider_free ;
 int sk_OSSL_PROVIDER_pop_free (int *,int ) ;

__attribute__((used)) static void provider_conf_deinit(CONF_IMODULE *md)
{
    sk_OSSL_PROVIDER_pop_free(activated_providers, ossl_provider_free);
    activated_providers = ((void*)0);
    OSSL_TRACE(CONF, "Cleaned up providers\n");
}
