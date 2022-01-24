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
typedef  int /*<<< orphan*/  X509 ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL_CONF_CTX ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  SSL_CERT_SET_FIRST ; 
 int /*<<< orphan*/  SSL_CERT_SET_NEXT ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_CONF_FLAG_CERTIFICATE ; 
 int /*<<< orphan*/  SSL_CONF_FLAG_SERVER ; 
 int FUNC13 (int /*<<< orphan*/ *,int*,char***) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  XN_FLAG_ONELINE ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC22 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC24 (char*,char*) ; 

int FUNC25(int argc, char *argv[])
{
    char *port = "*:4433";
    BIO *ssl_bio, *tmp;
    SSL_CTX *ctx;
    SSL_CONF_CTX *cctx;
    char buf[512];
    BIO *in = NULL;
    int ret = EXIT_FAILURE, i;
    char **args = argv + 1;
    int nargs = argc - 1;

    ctx = FUNC15(FUNC17());

    cctx = FUNC10();
    FUNC11(cctx, SSL_CONF_FLAG_SERVER);
    FUNC11(cctx, SSL_CONF_FLAG_CERTIFICATE);
    FUNC12(cctx, ctx);
    while (*args && **args == '-') {
        int rv;
        /* Parse standard arguments */
        rv = FUNC13(cctx, &nargs, &args);
        if (rv == -3) {
            FUNC21(stderr, "Missing argument for %s\n", *args);
            goto err;
        }
        if (rv < 0) {
            FUNC21(stderr, "Error in command %s\n", *args);
            FUNC8(stderr);
            goto err;
        }
        /* If rv > 0 we processed something so proceed to next arg */
        if (rv > 0)
            continue;
        /* Otherwise application specific argument processing */
        if (FUNC24(*args, "-port") == 0) {
            port = args[1];
            if (port == NULL) {
                FUNC21(stderr, "Missing -port argument\n");
                goto err;
            }
            args += 2;
            nargs -= 2;
            continue;
        } else {
            FUNC21(stderr, "Unknown argument %s\n", *args);
            goto err;
        }
    }

    if (!FUNC9(cctx)) {
        FUNC21(stderr, "Finish error\n");
        FUNC8(stderr);
        goto err;
    }
#ifdef ITERATE_CERTS
    /*
     * Demo of how to iterate over all certificates in an SSL_CTX structure.
     */
    {
        X509 *x;
        int rv;
        rv = SSL_CTX_set_current_cert(ctx, SSL_CERT_SET_FIRST);
        while (rv) {
            X509 *x = SSL_CTX_get0_certificate(ctx);
            X509_NAME_print_ex_fp(stdout, X509_get_subject_name(x), 0,
                                  XN_FLAG_ONELINE);
            printf("\n");
            rv = SSL_CTX_set_current_cert(ctx, SSL_CERT_SET_NEXT);
        }
        fflush(stdout);
    }
#endif
    /* Setup server side SSL bio */
    ssl_bio = FUNC4(ctx, 0);

    if ((in = FUNC3(port)) == NULL)
        goto err;

    /*
     * This means that when a new connection is accepted on 'in', The ssl_bio
     * will be 'duplicated' and have the new socket BIO push into it.
     * Basically it means the SSL BIO will be automatically setup
     */
    FUNC7(in, ssl_bio);

 again:
    /*
     * The first call will setup the accept socket, and the second will get a
     * socket.  In this loop, the first actual accept will occur in the
     * BIO_read() function.
     */

    if (FUNC0(in) <= 0)
        goto err;

    for (;;) {
        i = FUNC6(in, buf, 512);
        if (i == 0) {
            /*
             * If we have finished, remove the underlying BIO stack so the
             * next time we call any function for this BIO, it will attempt
             * to do an accept
             */
            FUNC23("Done\n");
            tmp = FUNC5(in);
            FUNC2(tmp);
            goto again;
        }
        if (i < 0)
            goto err;
        FUNC22(buf, 1, i, stdout);
        FUNC20(stdout);
    }

    ret = EXIT_SUCCESS;
 err:
    if (ret != EXIT_SUCCESS)
        FUNC8(stderr);
    FUNC1(in);
    return ret;
}