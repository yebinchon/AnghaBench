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
struct TYPE_3__ {int /*<<< orphan*/  expected_ctx; int /*<<< orphan*/  test_section; } ;
typedef  TYPE_1__ SSL_TEST_CTX_TEST_FIXTURE ;
typedef  int /*<<< orphan*/  SSL_TEST_CTX ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  conf ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(SSL_TEST_CTX_TEST_FIXTURE *fixture)
{
    int success = 0;
    SSL_TEST_CTX *ctx;

    if (!FUNC2(ctx = FUNC0(conf, fixture->test_section))
            || !FUNC3(ctx, fixture->expected_ctx))
        goto err;

    success = 1;
 err:
    FUNC1(ctx);
    return success;
}