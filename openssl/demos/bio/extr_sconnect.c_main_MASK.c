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
 int /*<<< orphan*/  BIO_CLOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,char*,int) ; 
 char* CAFILE ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
 char* HOSTPORT ; 
 char* FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSL_VERIFY_PEER ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC19 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 () ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int errno ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC24 (char*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (char*) ; 
 int /*<<< orphan*/  FUNC26 (int) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 
 char* FUNC28 (char*,char) ; 
 int FUNC29 (char*) ; 

int FUNC30(int argc, char *argv[])
{
    const char *hostport = HOSTPORT;
    const char *CAfile = CAFILE;
    char *hostname;
    char *cp;
    BIO *out = NULL;
    char buf[1024 * 10], *p;
    SSL_CTX *ssl_ctx = NULL;
    SSL *ssl;
    BIO *ssl_bio;
    int i, len, off, ret = EXIT_FAILURE;

    if (argc > 1)
        hostport = argv[1];
    if (argc > 2)
        CAfile = argv[2];

    hostname = FUNC13(hostport);
    if ((cp = FUNC28(hostname, ':')) != NULL)
        *cp = 0;

#ifdef WATT32
    dbug_init();
    sock_init();
#endif

    ssl_ctx = FUNC16(FUNC21());

    /* Enable trust chain verification */
    FUNC17(ssl_ctx, SSL_VERIFY_PEER, NULL);
    FUNC15(ssl_ctx, CAfile, NULL);

    /* Lets make a SSL structure */
    ssl = FUNC18(ssl_ctx);
    FUNC20(ssl);

    /* Enable peername verification */
    if (FUNC19(ssl, hostname) <= 0)
        goto err;

    /* Use it inside an SSL BIO */
    ssl_bio = FUNC2(FUNC0());
    FUNC8(ssl_bio, ssl, BIO_CLOSE);

    /* Lets use a connect BIO under the SSL BIO */
    out = FUNC2(FUNC5());
    FUNC6(out, hostport);
    FUNC7(out, 1);
    out = FUNC3(ssl_bio, out);

    p = "GET / HTTP/1.0\r\n\r\n";
    len = FUNC29(p);

    off = 0;
    for (;;) {
        i = FUNC10(out, &(p[off]), len);
        if (i <= 0) {
            if (FUNC9(out)) {
                FUNC23(stderr, "write DELAY\n");
                FUNC26(1);
                continue;
            } else {
                goto err;
            }
        }
        off += i;
        len -= i;
        if (len <= 0)
            break;
    }

    for (;;) {
        i = FUNC4(out, buf, sizeof(buf));
        if (i == 0)
            break;
        if (i < 0) {
            if (FUNC9(out)) {
                FUNC23(stderr, "read DELAY\n");
                FUNC26(1);
                continue;
            }
            goto err;
        }
        FUNC24(buf, 1, i, stdout);
    }

    ret = EXIT_SUCCESS;
    goto done;

 err:
    if (FUNC11() == 0) { /* system call error */
        FUNC23(stderr, "errno=%d ", errno);
        FUNC25("error");
    } else {
        FUNC12(stderr);
    }
 done:
    FUNC1(out);
    FUNC14(ssl_ctx);
    return ret;
}