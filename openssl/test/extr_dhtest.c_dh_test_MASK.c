#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  unsigned char DH ;
typedef  unsigned char BN_GENCB ;
typedef  unsigned char BIGNUM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 unsigned char* FUNC3 (unsigned char const*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 unsigned char* FUNC5 () ; 
 int FUNC6 (unsigned char*,long) ; 
 int DH_CHECK_INVALID_J_VALUE ; 
 int DH_CHECK_INVALID_Q_VALUE ; 
 int DH_CHECK_P_NOT_PRIME ; 
 int DH_CHECK_P_NOT_SAFE_PRIME ; 
 int DH_CHECK_Q_NOT_PRIME ; 
 int /*<<< orphan*/  DH_GENERATOR_5 ; 
 int DH_MODULUS_TOO_LARGE ; 
 int DH_MODULUS_TOO_SMALL ; 
 int DH_NOT_SUITABLE_GENERATOR ; 
 int DH_UNABLE_TO_CHECK_GENERATOR ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*,int*) ; 
 int FUNC8 (unsigned char*,unsigned char const*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned char*) ; 
 int FUNC10 (unsigned char*) ; 
 int FUNC11 (unsigned char*,int,int /*<<< orphan*/ ,unsigned char*) ; 
 unsigned char const* FUNC12 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC13 (unsigned char*,unsigned char const**,unsigned char const**) ; 
 unsigned char const* FUNC14 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC15 (unsigned char*,unsigned char const**,unsigned char const**,unsigned char const**) ; 
 unsigned char const* FUNC16 (unsigned char*) ; 
 unsigned char const* FUNC17 (unsigned char*) ; 
 unsigned char const* FUNC18 (unsigned char*) ; 
 unsigned char* FUNC19 () ; 
 int FUNC20 (unsigned char*,int /*<<< orphan*/ *,unsigned char*) ; 
 int FUNC21 (unsigned char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC22 (unsigned char*) ; 
 unsigned char* FUNC23 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC24 () ; 
 int /*<<< orphan*/  FUNC25 (unsigned char*) ; 
 unsigned char* FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 (int) ; 
 int /*<<< orphan*/  FUNC28 (unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC29 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC30 (unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC31 (int) ; 
 int /*<<< orphan*/  cb ; 

__attribute__((used)) static int FUNC32(void)
{
    DH *dh = NULL;
    BIGNUM *p = NULL, *q = NULL, *g = NULL;
    const BIGNUM *p2, *q2, *g2;
    BIGNUM *priv_key = NULL;
    const BIGNUM *pub_key2, *priv_key2;
    BN_GENCB *_cb = NULL;
    DH *a = NULL;
    DH *b = NULL;
    DH *c = NULL;
    const BIGNUM *ap = NULL, *ag = NULL, *apub_key = NULL;
    const BIGNUM *bpub_key = NULL, *bpriv_key = NULL;
    BIGNUM *bp = NULL, *bg = NULL, *cpriv_key = NULL;
    unsigned char *abuf = NULL;
    unsigned char *bbuf = NULL;
    unsigned char *cbuf = NULL;
    int i, alen, blen, clen, aout, bout, cout;
    int ret = 0;

    if (!FUNC29(dh = FUNC19())
        || !FUNC29(p = FUNC5())
        || !FUNC29(q = FUNC5())
        || !FUNC29(g = FUNC5())
        || !FUNC29(priv_key = FUNC5()))
        goto err1;

    /*
     * I) basic tests
     */

    /* using a small predefined Sophie Germain DH group with generator 3 */
    if (!FUNC31(FUNC6(p, 4079L))
        || !FUNC31(FUNC6(q, 2039L))
        || !FUNC31(FUNC6(g, 3L))
        || !FUNC31(FUNC21(dh, p, q, g)))
        goto err1;

    /* check fails, because p is way too small */
    if (!FUNC7(dh, &i))
        goto err2;
    i ^= DH_MODULUS_TOO_SMALL;
    if (!FUNC27(i & DH_CHECK_P_NOT_PRIME)
            || !FUNC27(i & DH_CHECK_P_NOT_SAFE_PRIME)
            || !FUNC27(i & DH_UNABLE_TO_CHECK_GENERATOR)
            || !FUNC27(i & DH_NOT_SUITABLE_GENERATOR)
            || !FUNC27(i & DH_CHECK_Q_NOT_PRIME)
            || !FUNC27(i & DH_CHECK_INVALID_Q_VALUE)
            || !FUNC27(i & DH_CHECK_INVALID_J_VALUE)
            || !FUNC27(i & DH_MODULUS_TOO_SMALL)
            || !FUNC27(i & DH_MODULUS_TOO_LARGE)
            || !FUNC27(i))
        goto err2;

    /* test the combined getter for p, q, and g */
    FUNC15(dh, &p2, &q2, &g2);
    if (!FUNC30(p2, p)
        || !FUNC30(q2, q)
        || !FUNC30(g2, g))
        goto err2;

    /* test the simple getters for p, q, and g */
    if (!FUNC30(FUNC14(dh), p2)
        || !FUNC30(FUNC18(dh), q2)
        || !FUNC30(FUNC12(dh), g2))
        goto err2;

    /* set the private key only*/
    if (!FUNC31(FUNC6(priv_key, 1234L))
        || !FUNC31(FUNC20(dh, NULL, priv_key)))
        goto err2;

    /* test the combined getter for pub_key and priv_key */
    FUNC13(dh, &pub_key2, &priv_key2);
    if (!FUNC30(pub_key2, NULL)
        || !FUNC30(priv_key2, priv_key))
        goto err3;

    /* test the simple getters for pub_key and priv_key */
    if (!FUNC30(FUNC17(dh), pub_key2)
        || !FUNC30(FUNC16(dh), priv_key2))
        goto err3;

    /* now generate a key pair (expect failure since modulus is too small) */
    if (!FUNC27(FUNC10(dh)))
        goto err3;

    /* We'll have a stale error on the queue from the above test so clear it */
    FUNC24();

    /*
     * II) key generation
     */

    /* generate a DH group ... */
    if (!FUNC29(_cb = FUNC1()))
        goto err3;
    FUNC2(_cb, &cb, NULL);
    if (!FUNC29(a = FUNC19())
            || !FUNC31(FUNC11(a, 512,
                                                    DH_GENERATOR_5, _cb)))
        goto err3;

    /* ... and check whether it is valid */
    if (!FUNC7(a, &i))
        goto err3;
    if (!FUNC27(i & DH_CHECK_P_NOT_PRIME)
            || !FUNC27(i & DH_CHECK_P_NOT_SAFE_PRIME)
            || !FUNC27(i & DH_UNABLE_TO_CHECK_GENERATOR)
            || !FUNC27(i & DH_NOT_SUITABLE_GENERATOR)
            || !FUNC27(i & DH_CHECK_Q_NOT_PRIME)
            || !FUNC27(i & DH_CHECK_INVALID_Q_VALUE)
            || !FUNC27(i & DH_CHECK_INVALID_J_VALUE)
            || !FUNC27(i & DH_MODULUS_TOO_SMALL)
            || !FUNC27(i & DH_MODULUS_TOO_LARGE)
            || !FUNC27(i))
        goto err3;

    FUNC15(a, &ap, NULL, &ag);

    /* now create another copy of the DH group for the peer */
    if (!FUNC29(b = FUNC19()))
        goto err3;

    if (!FUNC29(bp = FUNC3(ap))
            || !FUNC29(bg = FUNC3(ag))
            || !FUNC31(FUNC21(b, bp, NULL, bg)))
        goto err3;
    bp = bg = NULL;

    /*
     * III) simulate a key exchange
     */

    if (!FUNC10(a))
        goto err3;
    FUNC13(a, &apub_key, NULL);

    if (!FUNC10(b))
        goto err3;
    FUNC13(b, &bpub_key, &bpriv_key);

    /* Also test with a private-key-only copy of |b|. */
    if (!FUNC29(c = FUNC23(b))
            || !FUNC29(cpriv_key = FUNC3(bpriv_key))
            || !FUNC31(FUNC20(c, NULL, cpriv_key)))
        goto err3;
    cpriv_key = NULL;

    alen = FUNC22(a);
    if (!FUNC29(abuf = FUNC26(alen))
            || !FUNC31((aout = FUNC8(abuf, bpub_key, a)) != -1))
        goto err3;

    blen = FUNC22(b);
    if (!FUNC29(bbuf = FUNC26(blen))
            || !FUNC31((bout = FUNC8(bbuf, apub_key, b)) != -1))
        goto err3;

    clen = FUNC22(c);
    if (!FUNC29(cbuf = FUNC26(clen))
            || !FUNC31((cout = FUNC8(cbuf, apub_key, c)) != -1))
        goto err3;

    if (!FUNC31(aout >= 20)
            || !FUNC28(abuf, aout, bbuf, bout)
            || !FUNC28(abuf, aout, cbuf, cout))
        goto err3;

    ret = 1;
    goto success;

 err1:
    /* an error occurred before p,q,g were assigned to dh */
    FUNC4(p);
    FUNC4(q);
    FUNC4(g);
 err2:
    /* an error occurred before priv_key was assigned to dh */
    FUNC4(priv_key);
 err3:
 success:
    FUNC25(abuf);
    FUNC25(bbuf);
    FUNC25(cbuf);
    FUNC9(b);
    FUNC9(a);
    FUNC9(c);
    FUNC4(bp);
    FUNC4(bg);
    FUNC4(cpriv_key);
    FUNC0(_cb);
    FUNC9(dh);

    return ret;
}