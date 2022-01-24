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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int FUNC15 (int /*<<< orphan*/ *,int*) ; 
 int* max_fragment_len_test ; 

__attribute__((used)) static int FUNC16(int idx_tst)
{
    SSL_CTX *ctx;
    SSL *con = NULL;
    int testresult = 0, MFL_mode = 0;
    BIO *rbio, *wbio;

    ctx = FUNC4(FUNC14());
    if (!FUNC12(ctx))
        goto end;

    if (!FUNC13(FUNC5(
                   ctx, max_fragment_len_test[idx_tst])))
        goto end;

    con = FUNC8(ctx);
    if (!FUNC12(con))
        goto end;

    rbio = FUNC1(FUNC2());
    wbio = FUNC1(FUNC2());
    if (!FUNC12(rbio)|| !FUNC12(wbio)) {
        FUNC0(rbio);
        FUNC0(wbio);
        goto end;
    }

    FUNC9(con, rbio, wbio);
    FUNC10(con);

    if (!FUNC11(FUNC6(con), 0)) {
        /* This shouldn't succeed because we don't have a server! */
        goto end;
    }

    if (!FUNC13(FUNC15(wbio, &MFL_mode)))
        /* no MFL in client hello */
        goto end;
    if (!FUNC13(max_fragment_len_test[idx_tst] == MFL_mode))
        goto end;

    testresult = 1;

end:
    FUNC7(con);
    FUNC3(ctx);

    return testresult;
}