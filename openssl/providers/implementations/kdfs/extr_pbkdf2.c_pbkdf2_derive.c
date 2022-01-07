
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int HMAC_CTX ;
typedef int EVP_MD ;


 int ERR_LIB_PROV ;
 int ERR_raise (int ,int ) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_size (int const*) ;
 int HMAC_CTX_copy (int *,int *) ;
 int HMAC_CTX_free (int *) ;
 int * HMAC_CTX_new () ;
 int HMAC_Final (int *,unsigned char*,int *) ;
 int HMAC_Init_ex (int *,char const*,size_t,int const*,int *) ;
 int HMAC_Update (int *,unsigned char const*,int) ;
 size_t KDF_PBKDF2_MAX_KEY_LEN_DIGEST_RATIO ;
 int KDF_PBKDF2_MIN_ITERATIONS ;
 size_t KDF_PBKDF2_MIN_KEY_LEN_BITS ;
 int KDF_PBKDF2_MIN_SALT_LEN ;
 int PROV_R_INVALID_ITERATION_COUNT ;
 int PROV_R_INVALID_KEY_LEN ;
 int PROV_R_INVALID_SALT_LENGTH ;
 int memcpy (unsigned char*,unsigned char*,int) ;

__attribute__((used)) static int pbkdf2_derive(const char *pass, size_t passlen,
                         const unsigned char *salt, int saltlen, uint64_t iter,
                         const EVP_MD *digest, unsigned char *key,
                         size_t keylen, int lower_bound_checks)
{
    int ret = 0;
    unsigned char digtmp[EVP_MAX_MD_SIZE], *p, itmp[4];
    int cplen, k, tkeylen, mdlen;
    uint64_t j;
    unsigned long i = 1;
    HMAC_CTX *hctx_tpl = ((void*)0), *hctx = ((void*)0);

    mdlen = EVP_MD_size(digest);
    if (mdlen <= 0)
        return 0;





    if ((keylen / mdlen) >= KDF_PBKDF2_MAX_KEY_LEN_DIGEST_RATIO) {
        ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LEN);
        return 0;
    }

    if (lower_bound_checks) {
        if ((keylen * 8) < KDF_PBKDF2_MIN_KEY_LEN_BITS) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_KEY_LEN);
            return 0;
        }
        if (saltlen < KDF_PBKDF2_MIN_SALT_LEN) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_SALT_LENGTH);
            return 0;
        }
        if (iter < KDF_PBKDF2_MIN_ITERATIONS) {
            ERR_raise(ERR_LIB_PROV, PROV_R_INVALID_ITERATION_COUNT);
            return 0;
        }
    }

    hctx_tpl = HMAC_CTX_new();
    if (hctx_tpl == ((void*)0))
        return 0;
    p = key;
    tkeylen = keylen;
    if (!HMAC_Init_ex(hctx_tpl, pass, passlen, digest, ((void*)0)))
        goto err;
    hctx = HMAC_CTX_new();
    if (hctx == ((void*)0))
        goto err;
    while (tkeylen) {
        if (tkeylen > mdlen)
            cplen = mdlen;
        else
            cplen = tkeylen;




        itmp[0] = (unsigned char)((i >> 24) & 0xff);
        itmp[1] = (unsigned char)((i >> 16) & 0xff);
        itmp[2] = (unsigned char)((i >> 8) & 0xff);
        itmp[3] = (unsigned char)(i & 0xff);
        if (!HMAC_CTX_copy(hctx, hctx_tpl))
            goto err;
        if (!HMAC_Update(hctx, salt, saltlen)
                || !HMAC_Update(hctx, itmp, 4)
                || !HMAC_Final(hctx, digtmp, ((void*)0)))
            goto err;
        memcpy(p, digtmp, cplen);
        for (j = 1; j < iter; j++) {
            if (!HMAC_CTX_copy(hctx, hctx_tpl))
                goto err;
            if (!HMAC_Update(hctx, digtmp, mdlen)
                    || !HMAC_Final(hctx, digtmp, ((void*)0)))
                goto err;
            for (k = 0; k < cplen; k++)
                p[k] ^= digtmp[k];
        }
        tkeylen -= cplen;
        i++;
        p += cplen;
    }
    ret = 1;

err:
    HMAC_CTX_free(hctx);
    HMAC_CTX_free(hctx_tpl);
    return ret;
}
