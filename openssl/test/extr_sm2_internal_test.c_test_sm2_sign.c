
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int EC_POINT ;
typedef int EC_KEY ;
typedef int EC_GROUP ;
typedef int ECDSA_SIG ;
typedef int BIGNUM ;


 int BN_free (int *) ;
 int BN_hex2bn (int **,char const*) ;
 int ECDSA_SIG_free (int *) ;
 int ECDSA_SIG_get0 (int *,int const**,int const**) ;
 int EC_KEY_free (int *) ;
 int * EC_KEY_new () ;
 int EC_KEY_set_group (int *,int const*) ;
 int EC_KEY_set_private_key (int *,int *) ;
 int EC_KEY_set_public_key (int *,int *) ;
 int EC_POINT_free (int *) ;
 int EC_POINT_mul (int const*,int *,int *,int *,int *,int *) ;
 int * EC_POINT_new (int const*) ;
 int EVP_sm3 () ;
 int TEST_BN_eq (int *,int const*) ;
 int TEST_ptr (int *) ;
 int TEST_size_t_eq (int ,int ) ;
 int TEST_true (int) ;
 int fake_rand_bytes_offset ;
 int fake_rand_size ;
 int restore_rand () ;
 int * sm2_do_sign (int *,int ,int const*,size_t,int const*,size_t const) ;
 int sm2_do_verify (int *,int ,int *,int const*,size_t,int const*,size_t const) ;
 int start_fake_rand (char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int test_sm2_sign(const EC_GROUP *group,
                         const char *userid,
                         const char *privkey_hex,
                         const char *message,
                         const char *k_hex,
                         const char *r_hex,
                         const char *s_hex)
{
    const size_t msg_len = strlen(message);
    int ok = 0;
    BIGNUM *priv = ((void*)0);
    EC_POINT *pt = ((void*)0);
    EC_KEY *key = ((void*)0);
    ECDSA_SIG *sig = ((void*)0);
    const BIGNUM *sig_r = ((void*)0);
    const BIGNUM *sig_s = ((void*)0);
    BIGNUM *r = ((void*)0);
    BIGNUM *s = ((void*)0);

    if (!TEST_true(BN_hex2bn(&priv, privkey_hex)))
        goto done;

    key = EC_KEY_new();
    if (!TEST_ptr(key)
            || !TEST_true(EC_KEY_set_group(key, group))
            || !TEST_true(EC_KEY_set_private_key(key, priv)))
        goto done;

    pt = EC_POINT_new(group);
    if (!TEST_ptr(pt)
            || !TEST_true(EC_POINT_mul(group, pt, priv, ((void*)0), ((void*)0), ((void*)0)))
            || !TEST_true(EC_KEY_set_public_key(key, pt)))
        goto done;

    start_fake_rand(k_hex);
    sig = sm2_do_sign(key, EVP_sm3(), (const uint8_t *)userid, strlen(userid),
                      (const uint8_t *)message, msg_len);
    if (!TEST_ptr(sig)
            || !TEST_size_t_eq(fake_rand_bytes_offset, fake_rand_size)) {
        restore_rand();
        goto done;
    }
    restore_rand();

    ECDSA_SIG_get0(sig, &sig_r, &sig_s);

    if (!TEST_true(BN_hex2bn(&r, r_hex))
            || !TEST_true(BN_hex2bn(&s, s_hex))
            || !TEST_BN_eq(r, sig_r)
            || !TEST_BN_eq(s, sig_s))
        goto done;

    ok = sm2_do_verify(key, EVP_sm3(), sig, (const uint8_t *)userid,
                       strlen(userid), (const uint8_t *)message, msg_len);


    TEST_true(ok);

 done:
    ECDSA_SIG_free(sig);
    EC_POINT_free(pt);
    EC_KEY_free(key);
    BN_free(priv);
    BN_free(r);
    BN_free(s);

    return ok;
}
