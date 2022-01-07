
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int randbuf ;
typedef int msg ;
typedef int exptd ;
typedef int RAND_DRBG ;
typedef int OPENSSL_CTX ;
typedef int EVP_MD_CTX ;
typedef int EVP_MD ;
typedef int EVP_KDF ;
typedef int EC_KEY ;
typedef int BN_CTX ;
typedef int BIGNUM ;


 int BN_CTX_end (int *) ;
 int BN_CTX_free (int *) ;
 int * BN_CTX_get (int *) ;
 int * BN_CTX_new_ex (int *) ;
 int BN_CTX_start (int *) ;
 int BN_RAND_BOTTOM_ANY ;
 int BN_RAND_TOP_ANY ;
 int BN_add (int *,int *,int *) ;
 scalar_t__ BN_cmp (int *,int *) ;
 int BN_one (int *) ;
 int BN_rand_ex (int *,int,int ,int ,int *) ;
 int BN_zero (int *) ;
 int EC_KEY_free (int *) ;
 int EC_KEY_generate_key (int *) ;
 int * EC_KEY_new_by_curve_name_ex (int *,int ) ;
 int EVP_DigestFinal (int *,unsigned char*,unsigned int*) ;
 int EVP_DigestInit_ex (int *,int *,int *) ;
 int EVP_DigestUpdate (int *,char*,int) ;
 int * EVP_KDF_fetch (int *,int ,int *) ;
 int EVP_KDF_free (int *) ;
 int EVP_MD_CTX_free (int *) ;
 int * EVP_MD_CTX_new () ;
 int * EVP_MD_fetch (int *,char*,int *) ;
 int EVP_MD_free (int *) ;
 int NID_X9_62_prime256v1 ;
 int * OPENSSL_CTX_get0_public_drbg (int *) ;
 int OSSL_KDF_NAME_PBKDF2 ;
 int * PROV_LIBRARY_CONTEXT_OF (void*) ;
 scalar_t__ RAND_DRBG_bytes (int *,unsigned char*,int) ;
 int SHA256_DIGEST_LENGTH ;
 scalar_t__ memcmp (unsigned char*,unsigned char const*,int) ;

__attribute__((used)) static int dummy_evp_call(void *provctx)
{
    OPENSSL_CTX *libctx = PROV_LIBRARY_CONTEXT_OF(provctx);
    EVP_MD_CTX *ctx = EVP_MD_CTX_new();
    EVP_MD *sha256 = EVP_MD_fetch(libctx, "SHA256", ((void*)0));
    EVP_KDF *kdf = EVP_KDF_fetch(libctx, OSSL_KDF_NAME_PBKDF2, ((void*)0));
    char msg[] = "Hello World!";
    const unsigned char exptd[] = {
        0x7f, 0x83, 0xb1, 0x65, 0x7f, 0xf1, 0xfc, 0x53, 0xb9, 0x2d, 0xc1, 0x81,
        0x48, 0xa1, 0xd6, 0x5d, 0xfc, 0x2d, 0x4b, 0x1f, 0xa3, 0xd6, 0x77, 0x28,
        0x4a, 0xdd, 0xd2, 0x00, 0x12, 0x6d, 0x90, 0x69
    };
    unsigned int dgstlen = 0;
    unsigned char dgst[SHA256_DIGEST_LENGTH];
    int ret = 0;
    BN_CTX *bnctx = ((void*)0);
    BIGNUM *a = ((void*)0), *b = ((void*)0);
    unsigned char randbuf[128];
    RAND_DRBG *drbg = OPENSSL_CTX_get0_public_drbg(libctx);

    EC_KEY *key = ((void*)0);


    if (ctx == ((void*)0) || sha256 == ((void*)0) || drbg == ((void*)0) || kdf == ((void*)0))
        goto err;

    if (!EVP_DigestInit_ex(ctx, sha256, ((void*)0)))
        goto err;
    if (!EVP_DigestUpdate(ctx, msg, sizeof(msg) - 1))
        goto err;
    if (!EVP_DigestFinal(ctx, dgst, &dgstlen))
        goto err;
    if (dgstlen != sizeof(exptd) || memcmp(dgst, exptd, sizeof(exptd)) != 0)
        goto err;

    bnctx = BN_CTX_new_ex(libctx);
    if (bnctx == ((void*)0))
        goto err;
    BN_CTX_start(bnctx);
    a = BN_CTX_get(bnctx);
    b = BN_CTX_get(bnctx);
    if (b == ((void*)0))
        goto err;
    BN_zero(a);
    if (!BN_one(b)
        || !BN_add(a, a, b)
        || BN_cmp(a, b) != 0)
        goto err;

    if (RAND_DRBG_bytes(drbg, randbuf, sizeof(randbuf)) <= 0)
        goto err;

    if (!BN_rand_ex(a, 256, BN_RAND_TOP_ANY, BN_RAND_BOTTOM_ANY, bnctx))
        goto err;



    key = EC_KEY_new_by_curve_name_ex(libctx, NID_X9_62_prime256v1);
    if (key == ((void*)0))
        goto err;

    if (!EC_KEY_generate_key(key))
        goto err;


    ret = 1;
 err:
    BN_CTX_end(bnctx);
    BN_CTX_free(bnctx);

    EVP_KDF_free(kdf);
    EVP_MD_CTX_free(ctx);
    EVP_MD_free(sha256);


    EC_KEY_free(key);

    return ret;
}
