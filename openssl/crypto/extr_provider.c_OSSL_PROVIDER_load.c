
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;


 int ossl_provider_activate (int *) ;
 int * ossl_provider_find (int *,char const*,int ) ;
 int ossl_provider_free (int *) ;
 int * ossl_provider_new (int *,char const*,int *,int ) ;

OSSL_PROVIDER *OSSL_PROVIDER_load(OPENSSL_CTX *libctx, const char *name)
{
    OSSL_PROVIDER *prov = ((void*)0);


    if ((prov = ossl_provider_find(libctx, name, 0)) == ((void*)0)
        && (prov = ossl_provider_new(libctx, name, ((void*)0), 0)) == ((void*)0))
        return ((void*)0);

    if (!ossl_provider_activate(prov)) {
        ossl_provider_free(prov);
        return ((void*)0);
    }

    return prov;
}
