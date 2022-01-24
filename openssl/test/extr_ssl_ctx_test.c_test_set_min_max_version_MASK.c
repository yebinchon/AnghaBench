#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  expected_max; int /*<<< orphan*/  expected_min; int /*<<< orphan*/  max_ok; int /*<<< orphan*/  max_version; int /*<<< orphan*/  min_ok; int /*<<< orphan*/  min_version; } ;
typedef  TYPE_1__ version_test ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 TYPE_1__* version_testdata ; 

__attribute__((used)) static int FUNC14(int idx_tst)
{
    SSL_CTX *ctx = NULL;
    SSL *ssl = NULL;
    int testresult = 0;
    version_test t = version_testdata[idx_tst];

    ctx = FUNC3(FUNC13());
    if (ctx == NULL)
        goto end;

    ssl = FUNC9(ctx);
    if (ssl == NULL)
        goto end;

    if (!FUNC12(FUNC5(ctx, t.min_version), t.min_ok))
        goto end;
    if (!FUNC12(FUNC4(ctx, t.max_version), t.max_ok))
        goto end;
    if (!FUNC12(FUNC2(ctx), t.expected_min))
        goto end;
    if (!FUNC12(FUNC1(ctx), t.expected_max))
        goto end;

    if (!FUNC12(FUNC11(ssl, t.min_version), t.min_ok))
        goto end;
    if (!FUNC12(FUNC10(ssl, t.max_version), t.max_ok))
        goto end;
    if (!FUNC12(FUNC8(ssl), t.expected_min))
        goto end;
    if (!FUNC12(FUNC7(ssl), t.expected_max))
        goto end;

    testresult = 1;

  end:
    FUNC6(ssl);
    FUNC0(ctx);
    return testresult;
}