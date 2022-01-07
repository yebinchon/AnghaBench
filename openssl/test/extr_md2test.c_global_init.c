
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * OSSL_PROVIDER_load (int *,char*) ;
 int * prov ;

int global_init(void)
{
    prov = OSSL_PROVIDER_load(((void*)0), "legacy");

    return prov != ((void*)0);
}
