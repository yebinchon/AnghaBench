
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;


 int ossl_provider_free (int *) ;

int OSSL_PROVIDER_unload(OSSL_PROVIDER *prov)
{
    ossl_provider_free(prov);
    return 1;
}
