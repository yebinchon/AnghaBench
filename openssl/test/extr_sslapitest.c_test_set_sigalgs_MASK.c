#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  connsuccess; scalar_t__ valid; int /*<<< orphan*/  liststr; int /*<<< orphan*/  listlen; int /*<<< orphan*/ * list; } ;
typedef  TYPE_1__ sigalgs_list ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (size_t,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_2_VERSION ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  cert ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey ; 
 TYPE_1__* testsigalgs ; 

__attribute__((used)) static int FUNC17(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;
    const sigalgs_list *curr;
    int testctx;

    /* Should never happen */
    if (!FUNC10((size_t)idx, FUNC0(testsigalgs) * 2))
        return 0;

    testctx = ((size_t)idx < FUNC0(testsigalgs));
    curr = testctx ? &testsigalgs[idx]
                   : &testsigalgs[idx - FUNC0(testsigalgs)];

    if (!FUNC11(FUNC15(FUNC13(), FUNC12(),
                                       TLS1_VERSION, 0,
                                       &sctx, &cctx, cert, privkey)))
        return 0;

    /*
     * TODO(TLS1.3): These APIs cannot set TLSv1.3 sig algs so we just test it
     * for TLSv1.2 for now until we add a new API.
     */
    FUNC4(cctx, TLS1_2_VERSION);

    if (testctx) {
        int ret;

        if (curr->list != NULL)
            ret = FUNC2(cctx, curr->list, curr->listlen);
        else
            ret = FUNC3(cctx, curr->liststr);

        if (!ret) {
            if (curr->valid)
                FUNC8("Failure setting sigalgs in SSL_CTX (%d)\n", idx);
            else
                testresult = 1;
            goto end;
        }
        if (!curr->valid) {
            FUNC8("Not-failed setting sigalgs in SSL_CTX (%d)\n", idx);
            goto end;
        }
    }

    if (!FUNC11(FUNC16(sctx, cctx, &serverssl,
                                      &clientssl, NULL, NULL)))
        goto end;

    if (!testctx) {
        int ret;

        if (curr->list != NULL)
            ret = FUNC6(clientssl, curr->list, curr->listlen);
        else
            ret = FUNC7(clientssl, curr->liststr);
        if (!ret) {
            if (curr->valid)
                FUNC8("Failure setting sigalgs in SSL (%d)\n", idx);
            else
                testresult = 1;
            goto end;
        }
        if (!curr->valid)
            goto end;
    }

    if (!FUNC9(FUNC14(serverssl, clientssl,
                                           SSL_ERROR_NONE),
                curr->connsuccess))
        goto end;

    testresult = 1;

 end:
    FUNC5(serverssl);
    FUNC5(clientssl);
    FUNC1(sctx);
    FUNC1(cctx);

    return testresult;
}