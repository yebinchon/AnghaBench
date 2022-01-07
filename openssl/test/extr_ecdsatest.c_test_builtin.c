
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tbs ;
struct TYPE_2__ {int nid; } ;
typedef unsigned char EVP_PKEY ;
typedef unsigned char EVP_MD_CTX ;
typedef unsigned char EC_KEY ;


 int ECDSA_size (unsigned char*) ;
 int EC_KEY_generate_key (unsigned char*) ;
 unsigned char* EC_KEY_new_by_curve_name (int) ;
 int EVP_DigestSign (unsigned char*,unsigned char*,size_t*,unsigned char*,int) ;
 int EVP_DigestSignInit (unsigned char*,int *,int *,int *,unsigned char*) ;
 int EVP_DigestVerify (unsigned char*,unsigned char*,size_t,unsigned char*,int) ;
 int EVP_DigestVerifyInit (unsigned char*,int *,int *,int *,unsigned char*) ;
 int EVP_MD_CTX_free (unsigned char*) ;
 unsigned char* EVP_MD_CTX_new () ;
 int EVP_MD_CTX_reset (unsigned char*) ;
 int EVP_PKEY_assign_EC_KEY (unsigned char*,unsigned char*) ;
 int EVP_PKEY_free (unsigned char*) ;
 unsigned char* EVP_PKEY_new () ;
 int NID_ipsec3 ;
 int NID_ipsec4 ;
 int OBJ_nid2sn (int) ;
 int OPENSSL_free (unsigned char*) ;
 unsigned char* OPENSSL_malloc (size_t) ;
 int RAND_bytes (unsigned char*,int) ;
 int TEST_info (char*,int ) ;
 int TEST_int_eq (int ,int) ;
 int TEST_int_ge (int,int ) ;
 int TEST_int_le (size_t,int) ;
 int TEST_int_ne (int ,int) ;
 int TEST_ptr (unsigned char*) ;
 int TEST_true (int ) ;
 TYPE_1__* curves ;

__attribute__((used)) static int test_builtin(int n)
{
    EC_KEY *eckey_neg = ((void*)0), *eckey = ((void*)0);
    unsigned char dirt, offset, tbs[128];
    unsigned char *sig = ((void*)0);
    EVP_PKEY *pkey_neg = ((void*)0), *pkey = ((void*)0);
    EVP_MD_CTX *mctx = ((void*)0);
    size_t sig_len;
    int nid, ret = 0;
    int temp;

    nid = curves[n].nid;


    if (nid == NID_ipsec4 || nid == NID_ipsec3) {
        TEST_info("skipped: ECDSA unsupported for curve %s", OBJ_nid2sn(nid));
        return 1;
    }

    TEST_info("testing ECDSA for curve %s", OBJ_nid2sn(nid));

    if (!TEST_ptr(mctx = EVP_MD_CTX_new())

        || !TEST_true(RAND_bytes(tbs, sizeof(tbs)))

        || !TEST_ptr(eckey = EC_KEY_new_by_curve_name(nid))
        || !TEST_true(EC_KEY_generate_key(eckey))
        || !TEST_ptr(pkey = EVP_PKEY_new())
        || !TEST_true(EVP_PKEY_assign_EC_KEY(pkey, eckey))

        || !TEST_ptr(eckey_neg = EC_KEY_new_by_curve_name(nid))
        || !TEST_true(EC_KEY_generate_key(eckey_neg))
        || !TEST_ptr(pkey_neg = EVP_PKEY_new())
        || !TEST_true(EVP_PKEY_assign_EC_KEY(pkey_neg, eckey_neg)))
        goto err;

    temp = ECDSA_size(eckey);

    if (!TEST_int_ge(temp, 0)
        || !TEST_ptr(sig = OPENSSL_malloc(sig_len = (size_t)temp))

        || !TEST_true(EVP_DigestSignInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        || !TEST_true(EVP_DigestSign(mctx, sig, &sig_len, tbs, sizeof(tbs)))
        || !TEST_int_le(sig_len, ECDSA_size(eckey))

        || !TEST_true(EVP_MD_CTX_reset(mctx))
        || !TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey_neg))
        || !TEST_int_eq(EVP_DigestVerify(mctx, sig, sig_len, tbs, sizeof(tbs)), 0)

        || !TEST_true(EVP_MD_CTX_reset(mctx))
        || !TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        || !TEST_int_eq(EVP_DigestVerify(mctx, sig, sig_len - 1, tbs, sizeof(tbs)), -1)

        || !TEST_true(EVP_MD_CTX_reset(mctx))
        || !TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        || !TEST_int_eq(EVP_DigestVerify(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;


    tbs[0] ^= 1;
    if (!TEST_true(EVP_MD_CTX_reset(mctx))
        || !TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        || !TEST_int_eq(EVP_DigestVerify(mctx, sig, sig_len, tbs, sizeof(tbs)), 0))
        goto err;

    tbs[0] ^= 1;
    if (!TEST_true(EVP_MD_CTX_reset(mctx))
        || !TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        || !TEST_int_eq(EVP_DigestVerify(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;
    offset = tbs[0] % sig_len;
    dirt = tbs[1] ? tbs[1] : 1;
    sig[offset] ^= dirt;
    if (!TEST_true(EVP_MD_CTX_reset(mctx))
        || !TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        || !TEST_int_ne(EVP_DigestVerify(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;

    sig[offset] ^= dirt;
    if (!TEST_true(EVP_MD_CTX_reset(mctx))
        || !TEST_true(EVP_DigestVerifyInit(mctx, ((void*)0), ((void*)0), ((void*)0), pkey))
        || !TEST_int_eq(EVP_DigestVerify(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;

    ret = 1;
 err:
    EVP_PKEY_free(pkey);
    EVP_PKEY_free(pkey_neg);
    EVP_MD_CTX_free(mctx);
    OPENSSL_free(sig);
    return ret;
}
