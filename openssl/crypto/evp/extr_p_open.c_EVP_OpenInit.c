
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_PKEY ;
typedef int EVP_CIPHER_CTX ;
typedef int EVP_CIPHER ;


 int ERR_R_MALLOC_FAILURE ;
 int EVP_CIPHER_CTX_reset (int *) ;
 int EVP_CIPHER_CTX_set_key_length (int *,int) ;
 int EVP_DecryptInit_ex (int *,int const*,int *,unsigned char*,unsigned char const*) ;
 int EVP_F_EVP_OPENINIT ;
 scalar_t__ EVP_PKEY_RSA ;
 int EVP_PKEY_decrypt_old (unsigned char*,unsigned char const*,int,int *) ;
 scalar_t__ EVP_PKEY_id (int *) ;
 int EVP_PKEY_size (int *) ;
 int EVP_R_PUBLIC_KEY_NOT_RSA ;
 int EVPerr (int ,int ) ;
 int OPENSSL_clear_free (unsigned char*,int) ;
 unsigned char* OPENSSL_malloc (int) ;

int EVP_OpenInit(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *type,
                 const unsigned char *ek, int ekl, const unsigned char *iv,
                 EVP_PKEY *priv)
{
    unsigned char *key = ((void*)0);
    int i, size = 0, ret = 0;

    if (type) {
        EVP_CIPHER_CTX_reset(ctx);
        if (!EVP_DecryptInit_ex(ctx, type, ((void*)0), ((void*)0), ((void*)0)))
            return 0;
    }

    if (priv == ((void*)0))
        return 1;

    if (EVP_PKEY_id(priv) != EVP_PKEY_RSA) {
        EVPerr(EVP_F_EVP_OPENINIT, EVP_R_PUBLIC_KEY_NOT_RSA);
        goto err;
    }

    size = EVP_PKEY_size(priv);
    key = OPENSSL_malloc(size);
    if (key == ((void*)0)) {

        EVPerr(EVP_F_EVP_OPENINIT, ERR_R_MALLOC_FAILURE);
        goto err;
    }

    i = EVP_PKEY_decrypt_old(key, ek, ekl, priv);
    if ((i <= 0) || !EVP_CIPHER_CTX_set_key_length(ctx, i)) {

        goto err;
    }
    if (!EVP_DecryptInit_ex(ctx, ((void*)0), ((void*)0), key, iv))
        goto err;

    ret = 1;
 err:
    OPENSSL_clear_free(key, size);
    return ret;
}
