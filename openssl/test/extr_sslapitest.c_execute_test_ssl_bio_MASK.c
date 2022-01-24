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
typedef  scalar_t__ bio_change_t ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_CLOSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ CHANGE_RBIO ; 
 scalar_t__ NO_BIO_CHANGE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 () ; 

__attribute__((used)) static int FUNC15(int pop_ssl, bio_change_t change_bio)
{
    BIO *sslbio = NULL, *membio1 = NULL, *membio2 = NULL;
    SSL_CTX *ctx;
    SSL *ssl = NULL;
    int testresult = 0;

    if (!FUNC13(ctx = FUNC8(FUNC14()))
            || !FUNC13(ssl = FUNC10(ctx))
            || !FUNC13(sslbio = FUNC2(FUNC0()))
            || !FUNC13(membio1 = FUNC2(FUNC5())))
        goto end;

    FUNC6(sslbio, ssl, BIO_CLOSE);

    /*
     * If anything goes wrong here then we could leak memory, so this will
     * be caught in a crypto-mdebug build
     */
    FUNC4(sslbio, membio1);

    /* Verify changing the rbio/wbio directly does not cause leaks */
    if (change_bio != NO_BIO_CHANGE) {
        if (!FUNC13(membio2 = FUNC2(FUNC5())))
            goto end;
        if (change_bio == CHANGE_RBIO)
            FUNC11(ssl, membio2);
        else
            FUNC12(ssl, membio2);
    }
    ssl = NULL;

    if (pop_ssl)
        FUNC3(sslbio);
    else
        FUNC3(membio1);

    testresult = 1;
 end:
    FUNC1(membio1);
    FUNC1(sslbio);
    FUNC9(ssl);
    FUNC7(ctx);

    return testresult;
}