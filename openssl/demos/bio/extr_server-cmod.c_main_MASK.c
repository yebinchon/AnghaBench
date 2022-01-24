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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC16 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

int FUNC18(int argc, char *argv[])
{
    unsigned char buf[512];
    char *port = "*:4433";
    BIO *in = NULL;
    BIO *ssl_bio, *tmp;
    SSL_CTX *ctx;
    int ret = EXIT_FAILURE, i;

    ctx = FUNC12(FUNC13());

    if (FUNC9("cmod.cnf", "testapp", 0) <= 0) {
        FUNC15(stderr, "Error processing config file\n");
        goto err;
    }

    if (FUNC11(ctx, "server") == 0) {
        FUNC15(stderr, "Error configuring server.\n");
        goto err;
    }

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
        i = FUNC6(in, buf, sizeof(buf));
        if (i == 0) {
            /*
             * If we have finished, remove the underlying BIO stack so the
             * next time we call any function for this BIO, it will attempt
             * to do an accept
             */
            FUNC17("Done\n");
            tmp = FUNC5(in);
            FUNC2(tmp);
            goto again;
        }
        if (i < 0) {
            if (FUNC8(in))
                continue;
            goto err;
        }
        FUNC16(buf, 1, i, stdout);
        FUNC14(stdout);
    }

    ret = EXIT_SUCCESS;
 err:
    if (ret != EXIT_SUCCESS)
        FUNC10(stderr);
    FUNC1(in);
    return ret;
}