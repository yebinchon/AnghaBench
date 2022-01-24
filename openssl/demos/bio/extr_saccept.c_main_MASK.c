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
 int /*<<< orphan*/  CERT_FILE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_FILETYPE_PEM ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  done ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC18(int argc, char *argv[])
{
    char *port = NULL;
    BIO *in = NULL;
    BIO *ssl_bio, *tmp;
    SSL_CTX *ctx;
    char buf[512];
    int ret = EXIT_FAILURE, i;

    if (argc <= 1)
        port = "*:4433";
    else
        port = argv[1];

    ctx = FUNC10(FUNC13());
    if (!FUNC12(ctx, CERT_FILE))
        goto err;
    if (!FUNC11(ctx, CERT_FILE, SSL_FILETYPE_PEM))
        goto err;
    if (!FUNC9(ctx))
        goto err;

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

    /* Arrange to leave server loop on interrupt */
    FUNC17();

 again:
    /*
     * The first call will setup the accept socket, and the second will get a
     * socket.  In this loop, the first actual accept will occur in the
     * BIO_read() function.
     */

    if (FUNC0(in) <= 0)
        goto err;

    while (!done) {
        i = FUNC6(in, buf, 512);
        if (i == 0) {
            /*
             * If we have finished, remove the underlying BIO stack so the
             * next time we call any function for this BIO, it will attempt
             * to do an accept
             */
            FUNC16("Done\n");
            tmp = FUNC5(in);
            FUNC2(tmp);
            goto again;
        }
        if (i < 0)
            goto err;
        FUNC15(buf, 1, i, stdout);
        FUNC14(stdout);
    }

    ret = EXIT_SUCCESS;
 err:
    if (ret != EXIT_SUCCESS)
        FUNC8(stderr);
    FUNC1(in);
    return ret;
}