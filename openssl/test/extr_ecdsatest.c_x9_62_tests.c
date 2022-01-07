
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int nid; int md_nid; char* r; char* s; char* msg; char const* Q; int k; int d; } ;
typedef unsigned char EVP_MD_CTX ;
typedef unsigned char EC_KEY ;
typedef unsigned char ECDSA_SIG ;
typedef unsigned char BIGNUM ;


 int BN_clear_free (unsigned char*) ;
 int BN_free (unsigned char*) ;
 size_t BN_hex2bn (unsigned char**,char const*) ;
 unsigned char* BN_new () ;
 int ECDSA_SIG_free (unsigned char*) ;
 int ECDSA_SIG_get0 (unsigned char*,unsigned char const**,unsigned char const**) ;
 unsigned char* ECDSA_do_sign_ex (unsigned char*,unsigned int,unsigned char*,unsigned char*,unsigned char*) ;
 long ECDSA_do_verify (unsigned char*,unsigned int,unsigned char*,unsigned char*) ;
 size_t ECDSA_sign_setup (unsigned char*,int *,unsigned char**,unsigned char**) ;
 int EC_KEY_free (unsigned char*) ;
 size_t EC_KEY_generate_key (unsigned char*) ;
 size_t EC_KEY_key2buf (unsigned char*,int ,unsigned char**,int *) ;
 unsigned char* EC_KEY_new_by_curve_name (int) ;
 int * EC_curve_nid2nist (int) ;
 size_t EVP_DigestFinal_ex (unsigned char*,unsigned char*,unsigned int*) ;
 size_t EVP_DigestInit_ex (unsigned char*,int ,int *) ;
 size_t EVP_DigestUpdate (unsigned char*,unsigned char*,long) ;
 int EVP_MAX_MD_SIZE ;
 int EVP_MD_CTX_free (unsigned char*) ;
 unsigned char* EVP_MD_CTX_new () ;
 int EVP_get_digestbynid (int) ;
 int OBJ_nid2sn (int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_hexstr2buf (char const*,long*) ;
 int POINT_CONVERSION_UNCOMPRESSED ;
 int TEST_BN_eq (unsigned char const*,unsigned char*) ;
 int TEST_info (char*,int ) ;
 int TEST_int_eq (long,int) ;
 int TEST_mem_eq (unsigned char*,long,unsigned char*,size_t) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_skip (char*) ;
 int TEST_true (size_t) ;
 size_t change_rand () ;
 TYPE_1__* ecdsa_cavs_kats ;
 int * numbers ;
 size_t restore_rand () ;
 int use_fake ;

__attribute__((used)) static int x9_62_tests(int n)
{
    int nid, md_nid, ret = 0;
    const char *r_in = ((void*)0), *s_in = ((void*)0), *tbs = ((void*)0);
    unsigned char *pbuf = ((void*)0), *qbuf = ((void*)0), *message = ((void*)0);
    unsigned char digest[EVP_MAX_MD_SIZE];
    unsigned int dgst_len = 0;
    long q_len, msg_len = 0;
    size_t p_len;
    EVP_MD_CTX *mctx = ((void*)0);
    EC_KEY *key = ((void*)0);
    ECDSA_SIG *signature = ((void*)0);
    BIGNUM *r = ((void*)0), *s = ((void*)0);
    BIGNUM *kinv = ((void*)0), *rp = ((void*)0);
    const BIGNUM *sig_r = ((void*)0), *sig_s = ((void*)0);

    nid = ecdsa_cavs_kats[n].nid;
    md_nid = ecdsa_cavs_kats[n].md_nid;
    r_in = ecdsa_cavs_kats[n].r;
    s_in = ecdsa_cavs_kats[n].s;
    tbs = ecdsa_cavs_kats[n].msg;
    numbers[0] = ecdsa_cavs_kats[n].d;
    numbers[1] = ecdsa_cavs_kats[n].k;

    TEST_info("ECDSA KATs for curve %s", OBJ_nid2sn(nid));






    if (!TEST_ptr(mctx = EVP_MD_CTX_new())

        || !TEST_ptr(message = OPENSSL_hexstr2buf(tbs, &msg_len))
        || !TEST_true(EVP_DigestInit_ex(mctx, EVP_get_digestbynid(md_nid), ((void*)0)))
        || !TEST_true(EVP_DigestUpdate(mctx, message, msg_len))
        || !TEST_true(EVP_DigestFinal_ex(mctx, digest, &dgst_len))

        || !TEST_ptr(key = EC_KEY_new_by_curve_name(nid))

        || !TEST_ptr(r = BN_new())
        || !TEST_ptr(s = BN_new())
        || !TEST_true(BN_hex2bn(&r, r_in))
        || !TEST_true(BN_hex2bn(&s, s_in))

        || !TEST_true(change_rand()))
        goto err;


    use_fake = 1;
    if (!TEST_true(EC_KEY_generate_key(key))
        || !TEST_true(p_len = EC_KEY_key2buf(key, POINT_CONVERSION_UNCOMPRESSED,
                                             &pbuf, ((void*)0)))
        || !TEST_ptr(qbuf = OPENSSL_hexstr2buf(ecdsa_cavs_kats[n].Q, &q_len))
        || !TEST_int_eq(q_len, p_len)
        || !TEST_mem_eq(qbuf, q_len, pbuf, p_len))
        goto err;


    use_fake = 1;
    if (!TEST_true(ECDSA_sign_setup(key, ((void*)0), &kinv, &rp))
        || !TEST_ptr(signature = ECDSA_do_sign_ex(digest, dgst_len,
                                                  kinv, rp, key))

        || !TEST_int_eq(ECDSA_do_verify(digest, dgst_len, signature, key), 1))
        goto err;


    ECDSA_SIG_get0(signature, &sig_r, &sig_s);
    if (!TEST_BN_eq(sig_r, r)
        || !TEST_BN_eq(sig_s, s))
        goto err;

    ret = 1;

 err:

    if (!TEST_true(restore_rand()))
        ret = 0;

    OPENSSL_free(message);
    OPENSSL_free(pbuf);
    OPENSSL_free(qbuf);
    EC_KEY_free(key);
    ECDSA_SIG_free(signature);
    BN_free(r);
    BN_free(s);
    EVP_MD_CTX_free(mctx);
    BN_clear_free(kinv);
    BN_clear_free(rp);
    return ret;
}
