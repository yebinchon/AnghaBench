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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  SSL_OP_NO_ENCRYPT_THEN_MAC ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,unsigned long,unsigned long,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ debug ; 
 int /*<<< orphan*/  FUNC18 (unsigned char*,int,int) ; 

__attribute__((used)) static int FUNC19(SSL_CTX *ctx, const char *cs, int no_etm)
{
    SSL *srvr_ssl = NULL, *clnt_ssl = NULL;
    BIO *sc_bio = NULL;
    int i;
    size_t s;
    size_t mtus[30];
    unsigned char buf[600];
    int rv = 0;

    FUNC18(buf, 0x5a, sizeof(buf));

    if (!FUNC15(FUNC17(ctx, ctx, &srvr_ssl, &clnt_ssl,
                                      NULL, NULL)))
        goto end;

    if (no_etm)
        FUNC7(srvr_ssl, SSL_OP_NO_ENCRYPT_THEN_MAC);

    if (!FUNC15(FUNC5(srvr_ssl, cs))
            || !FUNC15(FUNC5(clnt_ssl, cs))
            || !FUNC13(sc_bio = FUNC4(srvr_ssl))
            || !FUNC15(FUNC16(clnt_ssl, srvr_ssl,
                                                SSL_ERROR_NONE)))
        goto end;

    if (debug)
        FUNC11("Channel established");

    /* For record MTU values between 500 and 539, call DTLS_get_data_mtu()
     * to query the payload MTU which will fit. */
    for (i = 0; i < 30; i++) {
        FUNC6(clnt_ssl, 500 + i);
        mtus[i] = FUNC1(clnt_ssl);
        if (debug)
            FUNC11("%s%s MTU for record mtu %d = %lu",
                      cs, no_etm ? "-noEtM" : "",
                      500 + i, (unsigned long)mtus[i]);
        if (!FUNC14(mtus[i], 0)) {
            FUNC11("Cipher %s MTU %d", cs, 500 + i);
            goto end;
        }
    }

    /* Now get out of the way */
    FUNC6(clnt_ssl, 1000);

    /*
     * Now for all values in the range of payload MTUs, send a payload of
     * that size and see what actual record size we end up with.
     */
    for (s = mtus[0]; s <= mtus[29]; s++) {
        size_t reclen;

        if (!FUNC12(FUNC8(clnt_ssl, buf, s), (int)s))
            goto end;
        reclen = FUNC0(sc_bio, buf, sizeof(buf));
        if (debug)
            FUNC11("record %zu for payload %zu", reclen, s);

        for (i = 0; i < 30; i++) {
            /* DTLS_get_data_mtu() with record MTU 500+i returned mtus[i] ... */

            if (!FUNC10(s <= mtus[i] && reclen > (size_t)(500 + i))) {
                /*
                 * We sent a packet smaller than or equal to mtus[j] and
                 * that made a record *larger* than the record MTU 500+j!
                 */
                FUNC9("%s: s=%lu, mtus[i]=%lu, reclen=%lu, i=%d",
                           cs, (unsigned long)s, (unsigned long)mtus[i],
                           (unsigned long)reclen, 500 + i);
                goto end;
            }
            if (!FUNC10(s > mtus[i] && reclen <= (size_t)(500 + i))) {
                /*
                 * We sent a *larger* packet than mtus[i] and that *still*
                 * fits within the record MTU 500+i, so DTLS_get_data_mtu()
                 * was overly pessimistic.
                 */
                FUNC9("%s: s=%lu, mtus[i]=%lu, reclen=%lu, i=%d",
                           cs, (unsigned long)s, (unsigned long)mtus[i],
                           (unsigned long)reclen, 500 + i);
                goto end;
            }
        }
    }
    rv = 1;
    if (FUNC2(clnt_ssl))
        rv = 2;
 end:
    FUNC3(clnt_ssl);
    FUNC3(srvr_ssl);
    return rv;
}