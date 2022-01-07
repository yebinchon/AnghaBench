
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mac ;
typedef int c ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;


 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit (int *,int const*) ;
 scalar_t__ EVP_DigestUpdate (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 scalar_t__ EVP_MD_CTX_copy_ex (int *,int *) ;
 int * EVP_MD_CTX_create () ;
 int EVP_MD_CTX_destroy (int *) ;
 int EVP_MD_size (int const*) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 size_t SSKDF_MAX_INLEN ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int SSKDF_hash_kdm(const EVP_MD *kdf_md,
                          const unsigned char *z, size_t z_len,
                          const unsigned char *info, size_t info_len,
                          unsigned int append_ctr,
                          unsigned char *derived_key, size_t derived_key_len)
{
    int ret = 0, hlen;
    size_t counter, out_len, len = derived_key_len;
    unsigned char c[4];
    unsigned char mac[EVP_MAX_MD_SIZE];
    unsigned char *out = derived_key;
    EVP_MD_CTX *ctx = ((void*)0), *ctx_init = ((void*)0);

    if (z_len > SSKDF_MAX_INLEN || info_len > SSKDF_MAX_INLEN
            || derived_key_len > SSKDF_MAX_INLEN
            || derived_key_len == 0)
        return 0;

    hlen = EVP_MD_size(kdf_md);
    if (hlen <= 0)
        return 0;
    out_len = (size_t)hlen;

    ctx = EVP_MD_CTX_create();
    ctx_init = EVP_MD_CTX_create();
    if (ctx == ((void*)0) || ctx_init == ((void*)0))
        goto end;

    if (!EVP_DigestInit(ctx_init, kdf_md))
        goto end;

    for (counter = 1;; counter++) {
        c[0] = (unsigned char)((counter >> 24) & 0xff);
        c[1] = (unsigned char)((counter >> 16) & 0xff);
        c[2] = (unsigned char)((counter >> 8) & 0xff);
        c[3] = (unsigned char)(counter & 0xff);

        if (!(EVP_MD_CTX_copy_ex(ctx, ctx_init)
                && (append_ctr || EVP_DigestUpdate(ctx, c, sizeof(c)))
                && EVP_DigestUpdate(ctx, z, z_len)
                && (!append_ctr || EVP_DigestUpdate(ctx, c, sizeof(c)))
                && EVP_DigestUpdate(ctx, info, info_len)))
            goto end;
        if (len >= out_len) {
            if (!EVP_DigestFinal_ex(ctx, out, ((void*)0)))
                goto end;
            out += out_len;
            len -= out_len;
            if (len == 0)
                break;
        } else {
            if (!EVP_DigestFinal_ex(ctx, mac, ((void*)0)))
                goto end;
            memcpy(out, mac, len);
            break;
        }
    }
    ret = 1;
end:
    EVP_MD_CTX_destroy(ctx);
    EVP_MD_CTX_destroy(ctx_init);
    OPENSSL_cleanse(mac, sizeof(mac));
    return ret;
}
