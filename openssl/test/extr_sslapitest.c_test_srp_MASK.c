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

/* Variables and functions */
 int /*<<< orphan*/  SRP_NO_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  cert ; 
 int FUNC16 (char*,char*) ; 
 int FUNC17 (char*,char*,char*) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 char* srpvfile ; 
 int /*<<< orphan*/  ssl_srp_cb ; 
 char* tmpfilename ; 
 int /*<<< orphan*/ * vbase ; 

__attribute__((used)) static int FUNC21(int tst)
{
    char *userid = "test", *password = "password", *tstsrpfile;
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int ret, testresult = 0;

    vbase = FUNC2(NULL);
    if (!FUNC12(vbase))
        goto end;

    if (tst == 0 || tst == 1) {
        if (!FUNC13(FUNC16(userid, password)))
            goto end;
    } else {
        if (tst == 4 || tst == 5) {
            if (!FUNC13(FUNC17(userid, password, tmpfilename)))
                goto end;
            tstsrpfile = tmpfilename;
        } else {
            tstsrpfile = srpvfile;
        }
        if (!FUNC10(FUNC1(vbase, tstsrpfile), SRP_NO_ERROR))
            goto end;
    }

    if (!FUNC13(FUNC19(FUNC15(), FUNC14(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        goto end;

    if (!FUNC11(FUNC8(sctx, ssl_srp_cb), 0)
            || !FUNC13(FUNC4(cctx, "SRP-AES-128-CBC-SHA"))
            || !FUNC13(FUNC5(sctx, TLS1_2_VERSION))
            || !FUNC13(FUNC5(cctx, TLS1_2_VERSION))
            || !FUNC11(FUNC7(cctx, userid), 0))
        goto end;

    if (tst % 2 == 1) {
        if (!FUNC11(FUNC6(cctx, "badpass"), 0))
            goto end;
    } else {
        if (!FUNC11(FUNC6(cctx, password), 0))
            goto end;
    }

    if (!FUNC13(FUNC20(sctx, cctx, &serverssl, &clientssl,
                                      NULL, NULL)))
        goto end;

    ret = FUNC18(serverssl, clientssl, SSL_ERROR_NONE);
    if (ret) {
        if (!FUNC13(tst % 2 == 0))
            goto end;
    } else {
        if (!FUNC13(tst % 2 == 1))
            goto end;
    }

    testresult = 1;

 end:
    FUNC0(vbase);
    vbase = NULL;
    FUNC9(serverssl);
    FUNC9(clientssl);
    FUNC3(sctx);
    FUNC3(cctx);

    return testresult;
}