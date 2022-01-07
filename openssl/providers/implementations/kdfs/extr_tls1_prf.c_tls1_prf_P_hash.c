
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OSSL_PARAM ;
typedef int EVP_MAC_CTX ;
typedef int Ai ;


 int * EVP_MAC_CTX_dup (int *) ;
 int EVP_MAC_CTX_free (int *) ;
 int EVP_MAC_CTX_set_params (int *,int *) ;
 int EVP_MAC_final (int *,unsigned char*,size_t*,size_t) ;
 int EVP_MAC_init (int *) ;
 size_t EVP_MAC_size (int *) ;
 int EVP_MAC_update (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,void*,size_t) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int tls1_prf_P_hash(EVP_MAC_CTX *ctx_init,
                           const unsigned char *sec, size_t sec_len,
                           const unsigned char *seed, size_t seed_len,
                           unsigned char *out, size_t olen)
{
    size_t chunk;
    EVP_MAC_CTX *ctx = ((void*)0), *ctx_Ai = ((void*)0);
    unsigned char Ai[EVP_MAX_MD_SIZE];
    size_t Ai_len;
    int ret = 0;
    OSSL_PARAM params[2], *p = params;

    *p++ = OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY,
                                             (void *)sec, sec_len);
    *p = OSSL_PARAM_construct_end();
    if (!EVP_MAC_CTX_set_params(ctx_init, params))
        goto err;
    if (!EVP_MAC_init(ctx_init))
        goto err;
    chunk = EVP_MAC_size(ctx_init);
    if (chunk == 0)
        goto err;

    ctx_Ai = EVP_MAC_CTX_dup(ctx_init);
    if (ctx_Ai == ((void*)0))
        goto err;
    if (seed != ((void*)0) && !EVP_MAC_update(ctx_Ai, seed, seed_len))
        goto err;

    for (;;) {

        if (!EVP_MAC_final(ctx_Ai, Ai, &Ai_len, sizeof(Ai)))
            goto err;
        EVP_MAC_CTX_free(ctx_Ai);
        ctx_Ai = ((void*)0);


        ctx = EVP_MAC_CTX_dup(ctx_init);
        if (ctx == ((void*)0))
            goto err;
        if (!EVP_MAC_update(ctx, Ai, Ai_len))
            goto err;

        if (olen > chunk) {
            ctx_Ai = EVP_MAC_CTX_dup(ctx);
            if (ctx_Ai == ((void*)0))
                goto err;
        }
        if (seed != ((void*)0) && !EVP_MAC_update(ctx, seed, seed_len))
            goto err;
        if (olen <= chunk) {

            if (!EVP_MAC_final(ctx, Ai, &Ai_len, sizeof(Ai)))
                goto err;
            memcpy(out, Ai, olen);
            break;
        }
        if (!EVP_MAC_final(ctx, out, ((void*)0), olen))
            goto err;
        EVP_MAC_CTX_free(ctx);
        ctx = ((void*)0);
        out += chunk;
        olen -= chunk;
    }
    ret = 1;
 err:
    EVP_MAC_CTX_free(ctx);
    EVP_MAC_CTX_free(ctx_Ai);
    OPENSSL_cleanse(Ai, sizeof(Ai));
    return ret;
}
