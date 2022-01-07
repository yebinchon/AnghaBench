
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;


 int ossl_provider_available (int *) ;
 int * ossl_provider_find (int *,char const*,int ) ;
 int ossl_provider_free (int *) ;

int OSSL_PROVIDER_available(OPENSSL_CTX *libctx, const char *name)
{
    OSSL_PROVIDER *prov = ((void*)0);
    int available = 0;


    prov = ossl_provider_find(libctx, name, 0);
    available = ossl_provider_available(prov);
    ossl_provider_free(prov);
    return available;
}
