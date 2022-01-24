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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SSL_SESSION ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL3_RT_MAX_PLAIN_LENGTH ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_OP_ENABLE_MIDDLEBOX_COMPAT ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_FINISH ; 
 int /*<<< orphan*/  SSL_READ_EARLY_DATA_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int,size_t*) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,size_t*) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (void*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (void*) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC23 () ; 
 int /*<<< orphan*/  FUNC24 () ; 
 void* badccs ; 
 void* badsessid ; 
 void* badvers ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int /*<<< orphan*/ * c_to_s_fbio ; 
 void* cappdataseen ; 
 void* ccsaftersh ; 
 void* ccsbeforesh ; 
 int /*<<< orphan*/  cert ; 
 void* chseen ; 
 scalar_t__ chsessidlen ; 
 void* FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC27 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC28 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 int /*<<< orphan*/ * s_to_c_fbio ; 
 void* sappdataseen ; 
 void* sccsseen ; 
 void* shseen ; 
 int /*<<< orphan*/  FUNC29 (char const*) ; 

__attribute__((used)) static int FUNC30(int tst)
{
    SSL_CTX *sctx = NULL, *cctx = NULL;
    SSL *sssl = NULL, *cssl = NULL;
    int ret = 0;
    const char msg[] = "Dummy data";
    char buf[80];
    size_t written, readbytes;
    SSL_SESSION *sess = NULL;

    chseen = shseen = sccsseen = ccsaftersh = ccsbeforesh = 0;
    sappdataseen = cappdataseen = badccs = badvers = badsessid = 0;
    chsessidlen = 0;

    if (!FUNC22(FUNC27(FUNC24(), FUNC23(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey))
        || !FUNC22(FUNC5(sctx,
                                                 SSL3_RT_MAX_PLAIN_LENGTH)))
        goto err;

    /*
     * Test 0: Simple Handshake
     * Test 1: Simple Handshake, client middlebox compat mode disabled
     * Test 2: Simple Handshake, server middlebox compat mode disabled
     * Test 3: HRR Handshake
     * Test 4: HRR Handshake, client middlebox compat mode disabled
     * Test 5: HRR Handshake, server middlebox compat mode disabled
     * Test 6: Early data handshake
     * Test 7: Early data handshake, client middlebox compat mode disabled
     * Test 8: Early data handshake, server middlebox compat mode disabled
     * Test 9: Early data then HRR
     * Test 10: Early data then HRR, client middlebox compat mode disabled
     * Test 11: Early data then HRR, server middlebox compat mode disabled
     */
    switch (tst) {
    case 0:
    case 3:
    case 6:
    case 9:
        break;
    case 1:
    case 4:
    case 7:
    case 10:
        FUNC2(cctx, SSL_OP_ENABLE_MIDDLEBOX_COMPAT);
        break;
    case 2:
    case 5:
    case 8:
    case 11:
        FUNC2(sctx, SSL_OP_ENABLE_MIDDLEBOX_COMPAT);
        break;
    default:
        FUNC14("Invalid test value");
        goto err;
    }

    if (tst >= 6) {
        /* Get a session suitable for early_data */
        if (!FUNC22(FUNC28(sctx, cctx, &sssl, &cssl, NULL, NULL))
                || !FUNC22(FUNC26(sssl, cssl, SSL_ERROR_NONE)))
            goto err;
        sess = FUNC9(cssl);
        if (!FUNC19(sess))
            goto err;
        FUNC12(cssl);
        FUNC12(sssl);
        FUNC8(sssl);
        FUNC8(cssl);
        sssl = cssl = NULL;
    }

    if ((tst >= 3 && tst <= 5) || tst >= 9) {
        /* HRR handshake */
#if defined(OPENSSL_NO_EC)
# if !defined(OPENSSL_NO_DH)
        if (!TEST_true(SSL_CTX_set1_groups_list(sctx, "ffdhe3072")))
            goto err;
# endif
#else
        if (!FUNC22(FUNC4(sctx, "P-256")))
            goto err;
#endif
    }

    s_to_c_fbio = FUNC1(FUNC25());
    c_to_s_fbio = FUNC1(FUNC25());
    if (!FUNC19(s_to_c_fbio)
            || !FUNC19(c_to_s_fbio)) {
        FUNC0(s_to_c_fbio);
        FUNC0(c_to_s_fbio);
        goto err;
    }

    /* BIOs get freed on error */
    if (!FUNC22(FUNC28(sctx, cctx, &sssl, &cssl, s_to_c_fbio,
                                      c_to_s_fbio)))
        goto err;

    if (tst >= 6) {
        /* Early data */
        if (!FUNC22(FUNC11(cssl, sess))
                || !FUNC22(FUNC13(cssl, msg, FUNC29(msg),
                                                   &written))
                || (tst <= 8
                    && !FUNC16(FUNC10(sssl, buf,  sizeof(buf),
                                                &readbytes),
                                                SSL_READ_EARLY_DATA_SUCCESS)))
            goto err;
        if (tst <= 8) {
            if (!FUNC17(FUNC7(cssl), 0))
                goto err;
        } else {
            if (!FUNC18(FUNC7(cssl), 0))
                goto err;
        }
        if (!FUNC16(FUNC10(sssl, buf,  sizeof(buf),
                                             &readbytes),
                         SSL_READ_EARLY_DATA_FINISH))
            goto err;
    }

    /* Perform handshake (or complete it if doing early data ) */
    if (!FUNC22(FUNC26(sssl, cssl, SSL_ERROR_NONE)))
        goto err;

    /*
     * Check there were no unexpected CCS messages, all record versions
     * were as expected, and that the session ids were reflected by the server
     * correctly.
     */
    if (!FUNC15(badccs) || !FUNC15(badvers) || !FUNC15(badsessid))
        goto err;

    switch (tst) {
    case 0:
        if (!FUNC22(sccsseen)
                || !FUNC22(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    case 1:
        if (!FUNC22(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC20(chsessidlen, 0))
            goto err;
        break;

    case 2:
        if (!FUNC15(sccsseen)
                || !FUNC22(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    case 3:
        if (!FUNC22(sccsseen)
                || !FUNC22(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    case 4:
        if (!FUNC22(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC20(chsessidlen, 0))
            goto err;
        break;

    case 5:
        if (!FUNC15(sccsseen)
                || !FUNC22(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    case 6:
        if (!FUNC22(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC22(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    case 7:
        if (!FUNC22(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC20(chsessidlen, 0))
            goto err;
        break;

    case 8:
        if (!FUNC15(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC22(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    case 9:
        if (!FUNC22(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC22(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    case 10:
        if (!FUNC22(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC15(ccsbeforesh)
                || !FUNC20(chsessidlen, 0))
            goto err;
        break;

    case 11:
        if (!FUNC15(sccsseen)
                || !FUNC15(ccsaftersh)
                || !FUNC22(ccsbeforesh)
                || !FUNC21(chsessidlen, 0))
            goto err;
        break;

    default:
        FUNC14("Invalid test value");
        goto err;
    }

    ret = 1;
 err:
    FUNC6(sess);
    FUNC8(sssl);
    FUNC8(cssl);
    FUNC3(sctx);
    FUNC3(cctx);

    return ret;
}