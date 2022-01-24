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
typedef  int /*<<< orphan*/  tbs ;
struct TYPE_2__ {int nid; } ;
typedef  unsigned char EVP_PKEY ;
typedef  unsigned char EVP_MD_CTX ;
typedef  unsigned char EC_KEY ;

/* Variables and functions */
 int FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 unsigned char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,unsigned char*,size_t*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,unsigned char*,size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 unsigned char* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC11 (unsigned char*) ; 
 unsigned char* FUNC12 () ; 
 int NID_ipsec3 ; 
 int NID_ipsec4 ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (unsigned char*) ; 
 unsigned char* FUNC15 (size_t) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC17 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (size_t,int) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC22 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ) ; 
 TYPE_1__* curves ; 

__attribute__((used)) static int FUNC24(int n)
{
    EC_KEY *eckey_neg = NULL, *eckey = NULL;
    unsigned char dirt, offset, tbs[128];
    unsigned char *sig = NULL;
    EVP_PKEY *pkey_neg = NULL, *pkey = NULL;
    EVP_MD_CTX *mctx = NULL;
    size_t sig_len;
    int nid, ret = 0;
    int temp;

    nid = curves[n].nid;

    /* skip built-in curves where ord(G) is not prime */
    if (nid == NID_ipsec4 || nid == NID_ipsec3) {
        FUNC17("skipped: ECDSA unsupported for curve %s", FUNC13(nid));
        return 1;
    }

    FUNC17("testing ECDSA for curve %s", FUNC13(nid));

    if (!FUNC22(mctx = FUNC8())
        /* get some random message data */
        || !FUNC23(FUNC16(tbs, sizeof(tbs)))
        /* real key */
        || !FUNC22(eckey = FUNC2(nid))
        || !FUNC23(FUNC1(eckey))
        || !FUNC22(pkey = FUNC12())
        || !FUNC23(FUNC10(pkey, eckey))
        /* fake key for negative testing */
        || !FUNC22(eckey_neg = FUNC2(nid))
        || !FUNC23(FUNC1(eckey_neg))
        || !FUNC22(pkey_neg = FUNC12())
        || !FUNC23(FUNC10(pkey_neg, eckey_neg)))
        goto err;

    temp = FUNC0(eckey);

    if (!FUNC19(temp, 0)
        || !FUNC22(sig = FUNC15(sig_len = (size_t)temp))
        /* create a signature */
        || !FUNC23(FUNC4(mctx, NULL, NULL, NULL, pkey))
        || !FUNC23(FUNC3(mctx, sig, &sig_len, tbs, sizeof(tbs)))
        || !FUNC20(sig_len, FUNC0(eckey))
        /* negative test, verify with wrong key, 0 return */
        || !FUNC23(FUNC9(mctx))
        || !FUNC23(FUNC6(mctx, NULL, NULL, NULL, pkey_neg))
        || !FUNC18(FUNC5(mctx, sig, sig_len, tbs, sizeof(tbs)), 0)
        /* negative test, verify with wrong signature length, -1 return */
        || !FUNC23(FUNC9(mctx))
        || !FUNC23(FUNC6(mctx, NULL, NULL, NULL, pkey))
        || !FUNC18(FUNC5(mctx, sig, sig_len - 1, tbs, sizeof(tbs)), -1)
        /* positive test, verify with correct key, 1 return */
        || !FUNC23(FUNC9(mctx))
        || !FUNC23(FUNC6(mctx, NULL, NULL, NULL, pkey))
        || !FUNC18(FUNC5(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;

    /* muck with the message, test it fails with 0 return */
    tbs[0] ^= 1;
    if (!FUNC23(FUNC9(mctx))
        || !FUNC23(FUNC6(mctx, NULL, NULL, NULL, pkey))
        || !FUNC18(FUNC5(mctx, sig, sig_len, tbs, sizeof(tbs)), 0))
        goto err;
    /* un-muck and test it verifies */
    tbs[0] ^= 1;
    if (!FUNC23(FUNC9(mctx))
        || !FUNC23(FUNC6(mctx, NULL, NULL, NULL, pkey))
        || !FUNC18(FUNC5(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;

    /*-
     * Muck with the ECDSA signature. The DER encoding is one of:
     * - 30 LL 02 ..
     * - 30 81 LL 02 ..
     *
     * - Sometimes this mucks with the high level DER sequence wrapper:
     *   in that case, DER-parsing of the whole signature should fail.
     *
     * - Sometimes this mucks with the DER-encoding of ECDSA.r:
     *   in that case, DER-parsing of ECDSA.r should fail.
     *
     * - Sometimes this mucks with the DER-encoding of ECDSA.s:
     *   in that case, DER-parsing of ECDSA.s should fail.
     *
     * - Sometimes this mucks with ECDSA.r:
     *   in that case, the signature verification should fail.
     *
     * - Sometimes this mucks with ECDSA.s:
     *   in that case, the signature verification should fail.
     *
     * The usual case is changing the integer value of ECDSA.r or ECDSA.s.
     * Because the ratio of DER overhead to signature bytes is small.
     * So most of the time it will be one of the last two cases.
     *
     * In any case, EVP_PKEY_verify should not return 1 for valid.
     */
    offset = tbs[0] % sig_len;
    dirt = tbs[1] ? tbs[1] : 1;
    sig[offset] ^= dirt;
    if (!FUNC23(FUNC9(mctx))
        || !FUNC23(FUNC6(mctx, NULL, NULL, NULL, pkey))
        || !FUNC21(FUNC5(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;
    /* un-muck and test it verifies */
    sig[offset] ^= dirt;
    if (!FUNC23(FUNC9(mctx))
        || !FUNC23(FUNC6(mctx, NULL, NULL, NULL, pkey))
        || !FUNC18(FUNC5(mctx, sig, sig_len, tbs, sizeof(tbs)), 1))
        goto err;

    ret = 1;
 err:
    FUNC11(pkey);
    FUNC11(pkey_neg);
    FUNC7(mctx);
    FUNC14(sig);
    return ret;
}