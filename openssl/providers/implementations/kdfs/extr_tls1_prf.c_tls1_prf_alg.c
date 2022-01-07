
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EVP_MAC_CTX ;


 int ERR_LIB_PROV ;
 int ERR_R_MALLOC_FAILURE ;
 int ERR_raise (int ,int ) ;
 int OPENSSL_clear_free (unsigned char*,size_t) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int tls1_prf_P_hash (int *,unsigned char const*,size_t,unsigned char const*,size_t,unsigned char*,size_t) ;

__attribute__((used)) static int tls1_prf_alg(EVP_MAC_CTX *mdctx, EVP_MAC_CTX *sha1ctx,
                        const unsigned char *sec, size_t slen,
                        const unsigned char *seed, size_t seed_len,
                        unsigned char *out, size_t olen)
{
    if (sha1ctx != ((void*)0)) {

        size_t i;
        unsigned char *tmp;

        size_t L_S1 = (slen + 1) / 2;
        size_t L_S2 = L_S1;

        if (!tls1_prf_P_hash(mdctx, sec, L_S1,
                             seed, seed_len, out, olen))
            return 0;

        if ((tmp = OPENSSL_malloc(olen)) == ((void*)0)) {
            ERR_raise(ERR_LIB_PROV, ERR_R_MALLOC_FAILURE);
            return 0;
        }

        if (!tls1_prf_P_hash(sha1ctx, sec + slen - L_S2, L_S2,
                             seed, seed_len, tmp, olen)) {
            OPENSSL_clear_free(tmp, olen);
            return 0;
        }
        for (i = 0; i < olen; i++)
            out[i] ^= tmp[i];
        OPENSSL_clear_free(tmp, olen);
        return 1;
    }


    if (!tls1_prf_P_hash(mdctx, sec, slen, seed, seed_len, out, olen))
        return 0;

    return 1;
}
