
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int prev ;
typedef int HMAC_CTX ;
typedef int EVP_MD ;


 int EVP_MAX_MD_SIZE ;
 int EVP_MD_size (int const*) ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,unsigned char*,int *) ;
 int HMAC_Init_ex (int *,unsigned char const*,size_t,int const*,int *) ;
 int HMAC_Update (int *,unsigned char const*,int) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int memcpy (unsigned char*,unsigned char*,size_t) ;

__attribute__((used)) static int HKDF_Expand(const EVP_MD *evp_md,
                       const unsigned char *prk, size_t prk_len,
                       const unsigned char *info, size_t info_len,
                       unsigned char *okm, size_t okm_len)
{
    HMAC_CTX *hmac;
    int ret = 0, sz;
    unsigned int i;
    unsigned char prev[EVP_MAX_MD_SIZE];
    size_t done_len = 0, dig_len, n;

    sz = EVP_MD_size(evp_md);
    if (sz <= 0)
        return 0;
    dig_len = (size_t)sz;


    n = okm_len / dig_len;
    if (okm_len % dig_len)
        n++;

    if (n > 255 || okm == ((void*)0))
        return 0;

    if ((hmac = HMAC_CTX_new()) == ((void*)0))
        return 0;

    if (!HMAC_Init_ex(hmac, prk, prk_len, evp_md, ((void*)0)))
        goto err;

    for (i = 1; i <= n; i++) {
        size_t copy_len;
        const unsigned char ctr = i;


        if (i > 1) {
            if (!HMAC_Init_ex(hmac, ((void*)0), 0, ((void*)0), ((void*)0)))
                goto err;

            if (!HMAC_Update(hmac, prev, dig_len))
                goto err;
        }

        if (!HMAC_Update(hmac, info, info_len))
            goto err;

        if (!HMAC_Update(hmac, &ctr, 1))
            goto err;

        if (!HMAC_Final(hmac, prev, ((void*)0)))
            goto err;

        copy_len = (done_len + dig_len > okm_len) ?
                       okm_len - done_len :
                       dig_len;

        memcpy(okm + done_len, prev, copy_len);

        done_len += copy_len;
    }
    ret = 1;

 err:
    OPENSSL_cleanse(prev, sizeof(prev));
    HMAC_CTX_free(hmac);
    return ret;
}
