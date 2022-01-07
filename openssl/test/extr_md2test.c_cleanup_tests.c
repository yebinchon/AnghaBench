
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OSSL_PROVIDER_unload (int ) ;
 int prov ;

void cleanup_tests(void)
{
    OSSL_PROVIDER_unload(prov);
}
