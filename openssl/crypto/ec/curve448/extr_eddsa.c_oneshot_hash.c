
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int c448_error_t ;
typedef int OPENSSL_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int C448_FAILURE ;
 int C448_SUCCESS ;
 int EVP_DigestFinalXOF (int *,int *,size_t) ;
 int EVP_DigestInit_ex (int *,int *,int *) ;
 int EVP_DigestUpdate (int *,int const*,size_t) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int * EVP_MD_fetch (int *,char*,int *) ;
 int EVP_MD_free (int *) ;

__attribute__((used)) static c448_error_t oneshot_hash(OPENSSL_CTX *ctx, uint8_t *out, size_t outlen,
                                 const uint8_t *in, size_t inlen)
{
    EVP_MD_CTX *hashctx = EVP_MD_CTX_new();
    EVP_MD *shake256 = ((void*)0);
    c448_error_t ret = C448_FAILURE;

    if (hashctx == ((void*)0))
        return C448_FAILURE;

    shake256 = EVP_MD_fetch(ctx, "SHAKE256", ((void*)0));
    if (shake256 == ((void*)0))
        goto err;

    if (!EVP_DigestInit_ex(hashctx, shake256, ((void*)0))
            || !EVP_DigestUpdate(hashctx, in, inlen)
            || !EVP_DigestFinalXOF(hashctx, out, outlen))
        goto err;

    ret = C448_SUCCESS;
 err:
    EVP_MD_CTX_free(hashctx);
    EVP_MD_free(shake256);
    return ret;
}
