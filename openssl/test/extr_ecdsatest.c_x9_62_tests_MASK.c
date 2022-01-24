#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int nid; int md_nid; char* r; char* s; char* msg; char const* Q; int /*<<< orphan*/  k; int /*<<< orphan*/  d; } ;
typedef  unsigned char EVP_MD_CTX ;
typedef  unsigned char EC_KEY ;
typedef  unsigned char ECDSA_SIG ;
typedef  unsigned char BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 size_t FUNC2 (unsigned char**,char const*) ; 
 unsigned char* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char const**,unsigned char const**) ; 
 unsigned char* FUNC6 (unsigned char*,unsigned int,unsigned char*,unsigned char*,unsigned char*) ; 
 long FUNC7 (unsigned char*,unsigned int,unsigned char*,unsigned char*) ; 
 size_t FUNC8 (unsigned char*,int /*<<< orphan*/ *,unsigned char**,unsigned char**) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 size_t FUNC10 (unsigned char*) ; 
 size_t FUNC11 (unsigned char*,int /*<<< orphan*/ ,unsigned char**,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC12 (int) ; 
 int /*<<< orphan*/ * FUNC13 (int) ; 
 size_t FUNC14 (unsigned char*,unsigned char*,unsigned int*) ; 
 size_t FUNC15 (unsigned char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 size_t FUNC16 (unsigned char*,unsigned char*,long) ; 
 int EVP_MAX_MD_SIZE ; 
 int /*<<< orphan*/  FUNC17 (unsigned char*) ; 
 unsigned char* FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (int) ; 
 int /*<<< orphan*/  FUNC20 (int) ; 
 int /*<<< orphan*/  FUNC21 (unsigned char*) ; 
 unsigned char* FUNC22 (char const*,long*) ; 
 int /*<<< orphan*/  POINT_CONVERSION_UNCOMPRESSED ; 
 int /*<<< orphan*/  FUNC23 (unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC24 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (long,int) ; 
 int /*<<< orphan*/  FUNC26 (unsigned char*,long,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC27 (unsigned char*) ; 
 int FUNC28 (char*) ; 
 int /*<<< orphan*/  FUNC29 (size_t) ; 
 size_t FUNC30 () ; 
 TYPE_1__* ecdsa_cavs_kats ; 
 int /*<<< orphan*/ * numbers ; 
 size_t FUNC31 () ; 
 int use_fake ; 

__attribute__((used)) static int FUNC32(int n)
{
    int nid, md_nid, ret = 0;
    const char *r_in = NULL, *s_in = NULL, *tbs = NULL;
    unsigned char *pbuf = NULL, *qbuf = NULL, *message = NULL;
    unsigned char digest[EVP_MAX_MD_SIZE];
    unsigned int dgst_len = 0;
    long q_len, msg_len = 0;
    size_t p_len;
    EVP_MD_CTX *mctx = NULL;
    EC_KEY *key = NULL;
    ECDSA_SIG *signature = NULL;
    BIGNUM *r = NULL, *s = NULL;
    BIGNUM *kinv = NULL, *rp = NULL;
    const BIGNUM *sig_r = NULL, *sig_s = NULL;

    nid = ecdsa_cavs_kats[n].nid;
    md_nid = ecdsa_cavs_kats[n].md_nid;
    r_in = ecdsa_cavs_kats[n].r;
    s_in = ecdsa_cavs_kats[n].s;
    tbs = ecdsa_cavs_kats[n].msg;
    numbers[0] = ecdsa_cavs_kats[n].d;
    numbers[1] = ecdsa_cavs_kats[n].k;

    FUNC24("ECDSA KATs for curve %s", FUNC20(nid));

#ifdef FIPS_MODE
    if (EC_curve_nid2nist(nid) == NULL)
        return TEST_skip("skip non approved curves");
#endif /* FIPS_MODE */

    if (!FUNC27(mctx = FUNC18())
        /* get the message digest */
        || !FUNC27(message = FUNC22(tbs, &msg_len))
        || !FUNC29(FUNC15(mctx, FUNC19(md_nid), NULL))
        || !FUNC29(FUNC16(mctx, message, msg_len))
        || !FUNC29(FUNC14(mctx, digest, &dgst_len))
        /* create the key */
        || !FUNC27(key = FUNC12(nid))
        /* load KAT variables */
        || !FUNC27(r = FUNC3())
        || !FUNC27(s = FUNC3())
        || !FUNC29(FUNC2(&r, r_in))
        || !FUNC29(FUNC2(&s, s_in))
        /* swap the RNG source */
        || !FUNC29(FUNC30()))
        goto err;

    /* public key must match KAT */
    use_fake = 1;
    if (!FUNC29(FUNC10(key))
        || !FUNC29(p_len = FUNC11(key, POINT_CONVERSION_UNCOMPRESSED,
                                             &pbuf, NULL))
        || !FUNC27(qbuf = FUNC22(ecdsa_cavs_kats[n].Q, &q_len))
        || !FUNC25(q_len, p_len)
        || !FUNC26(qbuf, q_len, pbuf, p_len))
        goto err;

    /* create the signature via ECDSA_sign_setup to avoid use of ECDSA nonces */
    use_fake = 1;
    if (!FUNC29(FUNC8(key, NULL, &kinv, &rp))
        || !FUNC27(signature = FUNC6(digest, dgst_len,
                                                  kinv, rp, key))
        /* verify the signature */
        || !FUNC25(FUNC7(digest, dgst_len, signature, key), 1))
        goto err;

    /* compare the created signature with the expected signature */
    FUNC5(signature, &sig_r, &sig_s);
    if (!FUNC23(sig_r, r)
        || !FUNC23(sig_s, s))
        goto err;

    ret = 1;

 err:
    /* restore the RNG source */
    if (!FUNC29(FUNC31()))
        ret = 0;

    FUNC21(message);
    FUNC21(pbuf);
    FUNC21(qbuf);
    FUNC9(key);
    FUNC4(signature);
    FUNC1(r);
    FUNC1(s);
    FUNC17(mctx);
    FUNC0(kinv);
    FUNC0(rp);
    return ret;
}