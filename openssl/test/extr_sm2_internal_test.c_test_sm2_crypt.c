
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int EVP_MD ;
typedef unsigned char EC_POINT ;
typedef unsigned char EC_KEY ;
typedef int EC_GROUP ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_hex2bn (int **,char const*) ;
 int EC_KEY_free (unsigned char*) ;
 unsigned char* EC_KEY_new () ;
 int EC_KEY_set_group (unsigned char*,int const*) ;
 int EC_KEY_set_private_key (unsigned char*,int *) ;
 int EC_KEY_set_public_key (unsigned char*,unsigned char*) ;
 int EC_POINT_free (unsigned char*) ;
 int EC_POINT_mul (int const*,unsigned char*,int *,int *,int *,int *) ;
 unsigned char* EC_POINT_new (int const*) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (char const*,int *) ;
 unsigned char* OPENSSL_zalloc (size_t) ;
 int TEST_int_eq (size_t,size_t const) ;
 int TEST_mem_eq (unsigned char*,size_t,...) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_size_t_eq (int ,int ) ;
 int TEST_true (int ) ;
 int fake_rand_bytes_offset ;
 int fake_rand_size ;
 int restore_rand () ;
 int sm2_ciphertext_size (unsigned char*,int const*,size_t const,size_t*) ;
 int sm2_decrypt (unsigned char*,int const*,unsigned char*,size_t,unsigned char*,size_t*) ;
 int sm2_encrypt (unsigned char*,int const*,unsigned char const*,size_t const,unsigned char*,size_t*) ;
 int sm2_plaintext_size (unsigned char*,int const*,size_t,size_t*) ;
 int start_fake_rand (char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int test_sm2_crypt(const EC_GROUP *group,
                          const EVP_MD *digest,
                          const char *privkey_hex,
                          const char *message,
                          const char *k_hex, const char *ctext_hex)
{
    const size_t msg_len = strlen(message);
    BIGNUM *priv = ((void*)0);
    EC_KEY *key = ((void*)0);
    EC_POINT *pt = ((void*)0);
    unsigned char *expected = OPENSSL_hexstr2buf(ctext_hex, ((void*)0));
    size_t ctext_len = 0;
    size_t ptext_len = 0;
    uint8_t *ctext = ((void*)0);
    uint8_t *recovered = ((void*)0);
    size_t recovered_len = msg_len;
    int rc = 0;

    if (!TEST_ptr(expected)
            || !TEST_true(BN_hex2bn(&priv, privkey_hex)))
        goto done;

    key = EC_KEY_new();
    if (!TEST_ptr(key)
            || !TEST_true(EC_KEY_set_group(key, group))
            || !TEST_true(EC_KEY_set_private_key(key, priv)))
        goto done;

    pt = EC_POINT_new(group);
    if (!TEST_ptr(pt)
            || !TEST_true(EC_POINT_mul(group, pt, priv, ((void*)0), ((void*)0), ((void*)0)))
            || !TEST_true(EC_KEY_set_public_key(key, pt))
            || !TEST_true(sm2_ciphertext_size(key, digest, msg_len, &ctext_len)))
        goto done;

    ctext = OPENSSL_zalloc(ctext_len);
    if (!TEST_ptr(ctext))
        goto done;

    start_fake_rand(k_hex);
    if (!TEST_true(sm2_encrypt(key, digest, (const uint8_t *)message, msg_len,
                               ctext, &ctext_len))
            || !TEST_size_t_eq(fake_rand_bytes_offset, fake_rand_size)) {
        restore_rand();
        goto done;
    }
    restore_rand();

    if (!TEST_mem_eq(ctext, ctext_len, expected, ctext_len))
        goto done;

    if (!TEST_true(sm2_plaintext_size(key, digest, ctext_len, &ptext_len))
            || !TEST_int_eq(ptext_len, msg_len))
        goto done;

    recovered = OPENSSL_zalloc(ptext_len);
    if (!TEST_ptr(recovered)
            || !TEST_true(sm2_decrypt(key, digest, ctext, ctext_len, recovered, &recovered_len))
            || !TEST_int_eq(recovered_len, msg_len)
            || !TEST_mem_eq(recovered, recovered_len, message, msg_len))
        goto done;

    rc = 1;
 done:
    BN_free(priv);
    EC_POINT_free(pt);
    OPENSSL_free(ctext);
    OPENSSL_free(recovered);
    OPENSSL_free(expected);
    EC_KEY_free(key);
    return rc;
}
