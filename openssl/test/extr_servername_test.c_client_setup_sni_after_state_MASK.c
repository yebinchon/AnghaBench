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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  host ; 

__attribute__((used)) static int FUNC18(void)
{
    SSL_CTX *ctx;
    SSL *con = NULL;
    BIO *rbio;
    BIO *wbio;
    char *hostname = NULL;
    int ret = 0;

    /* use TLS_method to blur 'side' */
    ctx = FUNC5(FUNC16());
    if (!FUNC13(ctx))
        goto end;

    con = FUNC8(ctx);
    if (!FUNC13(con))
        goto end;

    rbio = FUNC1(FUNC2());
    wbio = FUNC1(FUNC2());
    if (!FUNC13(rbio)|| !FUNC13(wbio)) {
        FUNC0(rbio);
        FUNC0(wbio);
        goto end;
    }

    FUNC9(con, rbio, wbio);
    FUNC10(con);

    /* set SNI after 'client side' is set */
    FUNC11(con, host);

    if (!FUNC12(FUNC6(con), 0))
        /* This shouldn't succeed because we don't have a server! */
        goto end;
    if (!FUNC15(FUNC17(wbio, &hostname)))
        /* no SNI in client hello */
        goto end;
    if (!FUNC14(hostname, host))
        /* incorrect SNI value */
        goto end;
    ret = 1;
end:
    FUNC3(hostname);
    FUNC7(con);
    FUNC4(ctx);
    return ret;
}