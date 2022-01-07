
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY_CTX ;
typedef int EVP_PKEY ;


 int EVP_PKEY_CTX_free (int *) ;
 int * EVP_PKEY_CTX_new (int *,int *) ;
 int EVP_PKEY_free (int *) ;
 scalar_t__ EVP_PKEY_keygen (int *,int **) ;
 scalar_t__ EVP_PKEY_keygen_init (int *) ;

EVP_PKEY *ssl_generate_pkey(EVP_PKEY *pm)
{
    EVP_PKEY_CTX *pctx = ((void*)0);
    EVP_PKEY *pkey = ((void*)0);

    if (pm == ((void*)0))
        return ((void*)0);
    pctx = EVP_PKEY_CTX_new(pm, ((void*)0));
    if (pctx == ((void*)0))
        goto err;
    if (EVP_PKEY_keygen_init(pctx) <= 0)
        goto err;
    if (EVP_PKEY_keygen(pctx, &pkey) <= 0) {
        EVP_PKEY_free(pkey);
        pkey = ((void*)0);
    }

    err:
    EVP_PKEY_CTX_free(pctx);
    return pkey;
}
