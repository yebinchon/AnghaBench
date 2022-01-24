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
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL_CONF_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_CONF_FLAG_CLIENT ; 
 int FUNC17 (int /*<<< orphan*/ *,int*,char***) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_MODE_AUTO_RETRY ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 () ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 scalar_t__ FUNC22 (char*,char*) ; 

int FUNC23(int argc, char **argv)
{
    BIO *sbio = NULL, *out = NULL;
    int len;
    char tmpbuf[1024];
    SSL_CTX *ctx;
    SSL_CONF_CTX *cctx;
    SSL *ssl;
    char **args = argv + 1;
    const char *connect_str = "localhost:4433";
    int nargs = argc - 1;

    ctx = FUNC18(FUNC20());
    cctx = FUNC14();
    FUNC15(cctx, SSL_CONF_FLAG_CLIENT);
    FUNC16(cctx, ctx);
    while (*args && **args == '-') {
        int rv;
        /* Parse standard arguments */
        rv = FUNC17(cctx, &nargs, &args);
        if (rv == -3) {
            FUNC21(stderr, "Missing argument for %s\n", *args);
            goto end;
        }
        if (rv < 0) {
            FUNC21(stderr, "Error in command %s\n", *args);
            FUNC11(stderr);
            goto end;
        }
        /* If rv > 0 we processed something so proceed to next arg */
        if (rv > 0)
            continue;
        /* Otherwise application specific argument processing */
        if (FUNC22(*args, "-connect") == 0) {
            connect_str = args[1];
            if (connect_str == NULL) {
                FUNC21(stderr, "Missing -connect argument\n");
                goto end;
            }
            args += 2;
            nargs -= 2;
            continue;
        } else {
            FUNC21(stderr, "Unknown argument %s\n", *args);
            goto end;
        }
    }

    if (!FUNC12(cctx)) {
        FUNC21(stderr, "Finish error\n");
        FUNC11(stderr);
        goto end;
    }

    /*
     * We'd normally set some stuff like the verify paths and * mode here
     * because as things stand this will connect to * any server whose
     * certificate is signed by any CA.
     */

    sbio = FUNC6(ctx);

    FUNC4(sbio, &ssl);

    if (!ssl) {
        FUNC21(stderr, "Can't locate SSL pointer\n");
        goto end;
    }

    /* Don't want any retries */
    FUNC19(ssl, SSL_MODE_AUTO_RETRY);

    /* We might want to do other things with ssl here */

    FUNC9(sbio, connect_str);

    out = FUNC5(stdout, BIO_NOCLOSE);
    if (FUNC0(sbio) <= 0) {
        FUNC21(stderr, "Error connecting to server\n");
        FUNC11(stderr);
        goto end;
    }

    if (FUNC1(sbio) <= 0) {
        FUNC21(stderr, "Error establishing SSL connection\n");
        FUNC11(stderr);
        goto end;
    }

    /* Could examine ssl here to get connection info */

    FUNC7(sbio, "GET / HTTP/1.0\n\n");
    for (;;) {
        len = FUNC8(sbio, tmpbuf, 1024);
        if (len <= 0)
            break;
        FUNC10(out, tmpbuf, len);
    }
 end:
    FUNC13(cctx);
    FUNC3(sbio);
    FUNC2(out);
    return 0;
}