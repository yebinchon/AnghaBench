#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  info; } ;
struct TYPE_3__ {TYPE_2__* user; int /*<<< orphan*/  login; int /*<<< orphan*/  vb; } ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLOSE ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 scalar_t__ BIO_RR_SSL_X509_LOOKUP ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/ * FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC21 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC22 (char*) ; 
 void* FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (TYPE_2__*) ; 
 int SSL_RECEIVED_SHUTDOWN ; 
 int SSL_SENT_SHUTDOWN ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC27 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC31 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC32 (int /*<<< orphan*/ *,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_trace ; 
 char* FUNC36 (scalar_t__,char*) ; 
 int /*<<< orphan*/  bio_dump_callback ; 
 scalar_t__ bio_err ; 
 scalar_t__ bio_s_msg ; 
 scalar_t__ bio_s_out ; 
 scalar_t__ bufsize ; 
 int /*<<< orphan*/  ctx ; 
 int /*<<< orphan*/  msg_cb ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ *) ; 
 scalar_t__ s_debug ; 
 int /*<<< orphan*/  s_ign_eof ; 
 int s_msg ; 
 int /*<<< orphan*/  s_quiet ; 
 scalar_t__ s_tlsextdebug ; 
 int /*<<< orphan*/  FUNC38 (int) ; 
 TYPE_1__ srp_callback_parm ; 
 int /*<<< orphan*/  FUNC39 (char*) ; 
 scalar_t__ FUNC40 (char*,char*,int) ; 
 int /*<<< orphan*/  tlsext_cb ; 

__attribute__((used)) static int FUNC41(int s, int stype, int prot, unsigned char *context)
{
    char *buf = NULL;
    int i;
    int ret = 1;
    SSL *con;
    BIO *io, *ssl_bio, *sbio;

    buf = FUNC36(bufsize, "server rev buffer");
    io = FUNC8(FUNC1());
    ssl_bio = FUNC8(FUNC3());
    if ((io == NULL) || (ssl_bio == NULL))
        goto err;

    /* lets make the output buffer a reasonable size */
    if (!FUNC16(io, bufsize))
        goto err;

    if ((con = FUNC27(ctx)) == NULL)
        goto err;

    if (s_tlsextdebug) {
        FUNC35(con, tlsext_cb);
        FUNC34(con, bio_s_out);
    }
    if (context != NULL
        && !FUNC32(con, context,
                                       FUNC39((char *)context))) {
        FUNC25(con);
        FUNC21(bio_err);
        goto err;
    }

    sbio = FUNC9(s, BIO_NOCLOSE);
    FUNC29(con, sbio, sbio);
    FUNC28(con);

    /* No need to free |con| after this. Done by BIO_free(ssl_bio) */
    FUNC15(ssl_bio, con, BIO_CLOSE);
    FUNC11(io, ssl_bio);
#ifdef CHARSET_EBCDIC
    io = BIO_push(BIO_new(BIO_f_ebcdic_filter()), io);
#endif

    if (s_debug) {
        FUNC13(FUNC26(con), bio_dump_callback);
        FUNC14(FUNC26(con), (char *)bio_s_out);
    }
    if (s_msg) {
#ifndef OPENSSL_NO_SSL_TRACE
        if (s_msg == 2)
            FUNC30(con, SSL_trace);
        else
#endif
            FUNC30(con, msg_cb);
        FUNC31(con, bio_s_msg ? bio_s_msg : bio_s_out);
    }

    for (;;) {
        i = FUNC0(io);
        if (i > 0)
            break;
        if (!FUNC18(io)) {
            FUNC12(bio_err, "CONNECTION FAILURE\n");
            FUNC21(bio_err);
            goto end;
        }
#ifndef OPENSSL_NO_SRP
        if (FUNC17(io)
            && FUNC6(io) == BIO_RR_SSL_X509_LOOKUP) {
            FUNC10(bio_s_out, "LOOKUP renego during accept\n");
            FUNC24(srp_callback_parm.user);
            srp_callback_parm.user =
                FUNC23(srp_callback_parm.vb,
                                       srp_callback_parm.login);
            if (srp_callback_parm.user)
                FUNC10(bio_s_out, "LOOKUP done %s\n",
                           srp_callback_parm.user->info);
            else
                FUNC10(bio_s_out, "LOOKUP not successful\n");
            continue;
        }
#endif
    }
    FUNC10(bio_err, "CONNECTION ESTABLISHED\n");
    FUNC37(con);

    for (;;) {
        i = FUNC7(io, buf, bufsize - 1);
        if (i < 0) {            /* error */
            if (!FUNC18(io)) {
                if (!s_quiet)
                    FUNC21(bio_err);
                goto err;
            } else {
                FUNC10(bio_s_out, "read R BLOCK\n");
#ifndef OPENSSL_NO_SRP
                if (FUNC17(io)
                    && FUNC6(io) == BIO_RR_SSL_X509_LOOKUP) {
                    FUNC10(bio_s_out, "LOOKUP renego during read\n");
                    FUNC24(srp_callback_parm.user);
                    srp_callback_parm.user =
                        FUNC23(srp_callback_parm.vb,
                                               srp_callback_parm.login);
                    if (srp_callback_parm.user)
                        FUNC10(bio_s_out, "LOOKUP done %s\n",
                                   srp_callback_parm.user->info);
                    else
                        FUNC10(bio_s_out, "LOOKUP not successful\n");
                    continue;
                }
#endif
#if !defined(OPENSSL_SYS_MSDOS)
                FUNC38(1);
#endif
                continue;
            }
        } else if (i == 0) {    /* end of input */
            ret = 1;
            FUNC10(bio_err, "CONNECTION CLOSED\n");
            goto end;
        } else {
            char *p = buf + i - 1;
            while (i && (*p == '\n' || *p == '\r')) {
                p--;
                i--;
            }
            if (!s_ign_eof && (i == 5) && (FUNC40(buf, "CLOSE", 5) == 0)) {
                ret = 1;
                FUNC10(bio_err, "CONNECTION CLOSED\n");
                goto end;
            }
            FUNC20((unsigned char *)buf, NULL, i);
            buf[i] = '\n';
            FUNC19(io, buf, i + 1);
            for (;;) {
                i = FUNC4(io);
                if (i > 0)
                    break;
                if (!FUNC18(io))
                    goto end;
            }
        }
    }
 end:
    /* make sure we re-use sessions */
    FUNC33(con, SSL_SENT_SHUTDOWN | SSL_RECEIVED_SHUTDOWN);

 err:

    FUNC22(buf);
    FUNC5(io);
    return ret;
}