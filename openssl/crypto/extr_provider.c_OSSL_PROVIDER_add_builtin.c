
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_provider_init_fn ;
typedef int OSSL_PROVIDER ;
typedef int OPENSSL_CTX ;


 int CRYPTO_F_OSSL_PROVIDER_ADD_BUILTIN ;
 int CRYPTOerr (int ,int ) ;
 int ERR_R_PASSED_NULL_PARAMETER ;
 int ossl_provider_free (int *) ;
 int * ossl_provider_new (int *,char const*,int *,int ) ;

int OSSL_PROVIDER_add_builtin(OPENSSL_CTX *libctx, const char *name,
                              OSSL_provider_init_fn *init_fn)
{
    OSSL_PROVIDER *prov = ((void*)0);

    if (name == ((void*)0) || init_fn == ((void*)0)) {
        CRYPTOerr(CRYPTO_F_OSSL_PROVIDER_ADD_BUILTIN,
                  ERR_R_PASSED_NULL_PARAMETER);
        return 0;
    }


    if ((prov = ossl_provider_new(libctx, name, init_fn, 0)) == ((void*)0))
        return 0;





    ossl_provider_free(prov);

    return 1;
}
