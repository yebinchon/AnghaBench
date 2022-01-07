
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ kbkdf_mode ;
typedef int EVP_MAC_CTX ;


 int * EVP_MAC_CTX_dup (int *) ;
 int EVP_MAC_CTX_free (int *) ;
 int EVP_MAC_final (int *,unsigned char*,int *,size_t) ;
 int EVP_MAC_update (int *,unsigned char const*,int) ;
 scalar_t__ FEEDBACK ;
 size_t MIN (size_t,size_t) ;
 int be32 (int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int derive(EVP_MAC_CTX *ctx_init, kbkdf_mode mode, unsigned char *iv,
                  size_t iv_len, unsigned char *label, size_t label_len,
                  unsigned char *context, size_t context_len,
                  unsigned char *k_i, size_t h, uint32_t l, unsigned char *ko,
                  size_t ko_len)
{
    int ret = 0;
    EVP_MAC_CTX *ctx = ((void*)0);
    size_t written = 0, to_write, k_i_len = iv_len;
    const unsigned char zero = 0;
    uint32_t counter, i;


    if (iv_len > 0)
        memcpy(k_i, iv, iv_len);

    for (counter = 1; written < ko_len; counter++) {
        i = be32(counter);

        ctx = EVP_MAC_CTX_dup(ctx_init);
        if (ctx == ((void*)0))
            goto done;


        if (mode == FEEDBACK && !EVP_MAC_update(ctx, k_i, k_i_len))
            goto done;

        if (!EVP_MAC_update(ctx, (unsigned char *)&i, 4)
            || !EVP_MAC_update(ctx, label, label_len)
            || !EVP_MAC_update(ctx, &zero, 1)
            || !EVP_MAC_update(ctx, context, context_len)
            || !EVP_MAC_update(ctx, (unsigned char *)&l, 4)
            || !EVP_MAC_final(ctx, k_i, ((void*)0), h))
            goto done;

        to_write = ko_len - written;
        memcpy(ko + written, k_i, MIN(to_write, h));
        written += h;

        k_i_len = h;
        EVP_MAC_CTX_free(ctx);
        ctx = ((void*)0);
    }

    ret = 1;
done:
    EVP_MAC_CTX_free(ctx);
    return ret;
}
