#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ certnum; scalar_t__ expected_prot; int /*<<< orphan*/  cipher; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SSL_ERROR_NONE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TLS1_VERSION ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  cert1 ; 
 int /*<<< orphan*/  cert2 ; 
 TYPE_1__* ciphers ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  privkey1 ; 
 int /*<<< orphan*/  privkey2 ; 

__attribute__((used)) static int FUNC12(int idx)
{
    SSL_CTX *cctx = NULL, *sctx = NULL;
    SSL *clientssl = NULL, *serverssl = NULL;
    int testresult = 0;

    if (!FUNC6(FUNC10(FUNC8(),
                                       FUNC7(),
                                       TLS1_VERSION,
                                       0,
                                       &sctx, &cctx,
                                       ciphers[idx].certnum == 0 ? cert1
                                                                 : cert2,
                                       ciphers[idx].certnum == 0 ? privkey1
                                                                 : privkey2)))
        goto end;

    if (!FUNC6(FUNC1(cctx, ciphers[idx].cipher))
            || !FUNC6(FUNC1(sctx, ciphers[idx].cipher))
            || !FUNC6(FUNC11(sctx, cctx, &serverssl, &clientssl,
                                             NULL, NULL)))
        goto end;

    if (ciphers[idx].expected_prot == 0) {
        if (!FUNC4(FUNC9(serverssl, clientssl,
                                              SSL_ERROR_NONE)))
            goto end;
    } else {
        if (!FUNC6(FUNC9(serverssl, clientssl,
                                             SSL_ERROR_NONE))
                || !FUNC5(FUNC3(clientssl),
                                ciphers[idx].expected_prot))
        goto end;
    }

    testresult = 1;

 end:
    FUNC2(serverssl);
    FUNC2(clientssl);
    FUNC0(sctx);
    FUNC0(cctx);

    return testresult;
}