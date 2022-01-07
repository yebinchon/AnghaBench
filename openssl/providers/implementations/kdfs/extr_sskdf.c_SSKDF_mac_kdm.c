
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mac_buf ;
typedef int c ;
typedef int OSSL_PARAM ;
typedef int EVP_MAC_CTX ;


 int * EVP_MAC_CTX_dup (int *) ;
 int EVP_MAC_CTX_free (int *) ;
 int EVP_MAC_CTX_set_params (int *,int *) ;
 int EVP_MAC_final (int *,unsigned char*,int *,size_t) ;
 int EVP_MAC_init (int *) ;
 size_t EVP_MAC_size (int *) ;
 scalar_t__ EVP_MAC_update (int *,unsigned char const*,size_t) ;
 int EVP_MAX_MD_SIZE ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 int OSSL_MAC_PARAM_KEY ;
 int OSSL_PARAM_construct_end () ;
 int OSSL_PARAM_construct_octet_string (int ,void*,size_t) ;
 size_t SSKDF_MAX_INLEN ;
 int kmac_init (int *,unsigned char const*,size_t,size_t,size_t,unsigned char**) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int SSKDF_mac_kdm(EVP_MAC_CTX *ctx_init,
                         const unsigned char *kmac_custom,
                         size_t kmac_custom_len, size_t kmac_out_len,
                         const unsigned char *salt, size_t salt_len,
                         const unsigned char *z, size_t z_len,
                         const unsigned char *info, size_t info_len,
                         unsigned char *derived_key, size_t derived_key_len)
{
    int ret = 0;
    size_t counter, out_len, len;
    unsigned char c[4];
    unsigned char mac_buf[EVP_MAX_MD_SIZE];
    unsigned char *out = derived_key;
    EVP_MAC_CTX *ctx = ((void*)0);
    unsigned char *mac = mac_buf, *kmac_buffer = ((void*)0);
    OSSL_PARAM params[2], *p = params;

    if (z_len > SSKDF_MAX_INLEN || info_len > SSKDF_MAX_INLEN
            || derived_key_len > SSKDF_MAX_INLEN
            || derived_key_len == 0)
        return 0;

    *p++ = OSSL_PARAM_construct_octet_string(OSSL_MAC_PARAM_KEY,
                                             (void *)salt, salt_len);
    *p = OSSL_PARAM_construct_end();

    if (!EVP_MAC_CTX_set_params(ctx_init, params))
        goto end;

    if (!kmac_init(ctx_init, kmac_custom, kmac_custom_len, kmac_out_len,
                   derived_key_len, &kmac_buffer))
        goto end;
    if (kmac_buffer != ((void*)0))
        mac = kmac_buffer;

    if (!EVP_MAC_init(ctx_init))
        goto end;

    out_len = EVP_MAC_size(ctx_init);
    if (out_len <= 0)
        goto end;
    len = derived_key_len;

    for (counter = 1;; counter++) {
        c[0] = (unsigned char)((counter >> 24) & 0xff);
        c[1] = (unsigned char)((counter >> 16) & 0xff);
        c[2] = (unsigned char)((counter >> 8) & 0xff);
        c[3] = (unsigned char)(counter & 0xff);

        ctx = EVP_MAC_CTX_dup(ctx_init);
        if (!(ctx != ((void*)0)
                && EVP_MAC_update(ctx, c, sizeof(c))
                && EVP_MAC_update(ctx, z, z_len)
                && EVP_MAC_update(ctx, info, info_len)))
            goto end;
        if (len >= out_len) {
            if (!EVP_MAC_final(ctx, out, ((void*)0), len))
                goto end;
            out += out_len;
            len -= out_len;
            if (len == 0)
                break;
        } else {
            if (!EVP_MAC_final(ctx, mac, ((void*)0), len))
                goto end;
            memcpy(out, mac, len);
            break;
        }
        EVP_MAC_CTX_free(ctx);
        ctx = ((void*)0);
    }
    ret = 1;
end:
    if (kmac_buffer != ((void*)0))
        OPENSSL_clear_free(kmac_buffer, kmac_out_len);
    else
        OPENSSL_cleanse(mac_buf, sizeof(mac_buf));

    EVP_MAC_CTX_free(ctx);
    return ret;
}
