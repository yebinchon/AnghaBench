
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int random_bytes ;
typedef int private_bytes ;
typedef int done ;
typedef int OPENSSL_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_F_BN_GENERATE_DSA_NONCE ;
 int BN_R_NO_SUITABLE_DIGEST ;
 int BN_R_PRIVATE_KEY_TOO_LARGE ;
 int BN_bin2bn (unsigned char*,unsigned int const,int *) ;
 scalar_t__ BN_bn2binpad (int const*,unsigned char*,int) ;
 int BN_mod (int *,int *,int const*,int *) ;
 int BN_num_bytes (int const*) ;
 int BNerr (int ,int ) ;
 int EVP_DigestFinal_ex (int *,unsigned char*,int *) ;
 int EVP_DigestInit_ex (int *,int *,int *) ;
 int EVP_DigestUpdate (int *,...) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int * EVP_MD_fetch (int *,char*,int *) ;
 int EVP_MD_free (int *) ;
 int OPENSSL_cleanse (unsigned char*,int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (unsigned int const) ;
 int SHA512_DIGEST_LENGTH ;
 int * bn_get_lib_ctx (int *) ;
 int memcpy (unsigned char*,unsigned char*,unsigned int) ;
 int rand_priv_bytes_ex (int *,unsigned char*,int) ;

int BN_generate_dsa_nonce(BIGNUM *out, const BIGNUM *range,
                          const BIGNUM *priv, const unsigned char *message,
                          size_t message_len, BN_CTX *ctx)
{
    EVP_MD_CTX *mdctx = EVP_MD_CTX_new();




    unsigned char random_bytes[64];
    unsigned char digest[SHA512_DIGEST_LENGTH];
    unsigned done, todo;

    const unsigned num_k_bytes = BN_num_bytes(range) + 8;
    unsigned char private_bytes[96];
    unsigned char *k_bytes = ((void*)0);
    int ret = 0;
    EVP_MD *md = ((void*)0);
    OPENSSL_CTX *libctx = bn_get_lib_ctx(ctx);

    if (mdctx == ((void*)0))
        goto err;

    k_bytes = OPENSSL_malloc(num_k_bytes);
    if (k_bytes == ((void*)0))
        goto err;


    if (BN_bn2binpad(priv, private_bytes, sizeof(private_bytes)) < 0) {





        BNerr(BN_F_BN_GENERATE_DSA_NONCE, BN_R_PRIVATE_KEY_TOO_LARGE);
        goto err;
    }

    md = EVP_MD_fetch(libctx, "SHA512", ((void*)0));
    if (md == ((void*)0)) {
        BNerr(BN_F_BN_GENERATE_DSA_NONCE, BN_R_NO_SUITABLE_DIGEST);
        goto err;
    }
    for (done = 0; done < num_k_bytes;) {
        if (!rand_priv_bytes_ex(libctx, random_bytes, sizeof(random_bytes)))
            goto err;

        if (!EVP_DigestInit_ex(mdctx, md, ((void*)0))
                || !EVP_DigestUpdate(mdctx, &done, sizeof(done))
                || !EVP_DigestUpdate(mdctx, private_bytes,
                                     sizeof(private_bytes))
                || !EVP_DigestUpdate(mdctx, message, message_len)
                || !EVP_DigestUpdate(mdctx, random_bytes, sizeof(random_bytes))
                || !EVP_DigestFinal_ex(mdctx, digest, ((void*)0)))
            goto err;

        todo = num_k_bytes - done;
        if (todo > SHA512_DIGEST_LENGTH)
            todo = SHA512_DIGEST_LENGTH;
        memcpy(k_bytes + done, digest, todo);
        done += todo;
    }

    if (!BN_bin2bn(k_bytes, num_k_bytes, out))
        goto err;
    if (BN_mod(out, out, range, ctx) != 1)
        goto err;
    ret = 1;

 err:
    EVP_MD_CTX_free(mdctx);
    EVP_MD_free(md);
    OPENSSL_free(k_bytes);
    OPENSSL_cleanse(private_bytes, sizeof(private_bytes));
    return ret;
}
