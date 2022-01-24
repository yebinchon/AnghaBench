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
struct TYPE_3__ {int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ OSSL_CMP_CTX_TEST_FIXTURE ;
typedef  int /*<<< orphan*/  OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  ALL ; 
 int /*<<< orphan*/  INFO ; 
 scalar_t__ OPENSSL_LINE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OSSL_CMP_LOG_DEBUG ; 
 int /*<<< orphan*/  OSSL_CMP_LOG_ERR ; 
 int /*<<< orphan*/  OSSL_CMP_LOG_INFO ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*,char) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * test_log_cb ; 
 int test_log_cb_res ; 
 scalar_t__ test_log_line ; 

__attribute__((used)) static int FUNC11(OSSL_CMP_CTX_TEST_FIXTURE *fixture)
{
    int res = 1;
#if !defined OPENSSL_NO_TRACE && !defined OPENSSL_NO_STDIO
    OSSL_CMP_CTX *ctx = fixture->ctx;

    FUNC8(ALL, "this general trace message is not shown by default\n");

    FUNC6();
    FUNC6(); /* multiple calls should be harmless */

    if (!FUNC10(FUNC0(ctx, NULL))) {
        res = 0;
    } else {
        FUNC3("this should be printed as CMP error message");
        FUNC7("this should be printed as CMP warning message");
        FUNC2("this should not be printed");
        FUNC10(FUNC1(ctx, OSSL_CMP_LOG_DEBUG));
        FUNC2("this should be printed as CMP debug message");
        FUNC10(FUNC1(ctx, OSSL_CMP_LOG_INFO));
    }
    if (!FUNC10(FUNC0(ctx, test_log_cb))) {
        res = 0;
    } else {
        test_log_line = OPENSSL_LINE + 1;
        FUNC4(INFO, "%s%c", "o", 'k');
        if (!FUNC9(test_log_cb_res, 1))
            res = 0;
        FUNC1(ctx, OSSL_CMP_LOG_ERR);
        test_log_cb_res = -1; /* callback should not be called at all */
        test_log_line = OPENSSL_LINE + 1;
        FUNC4(INFO, "%s%c", "o", 'k');
        if (!FUNC9(test_log_cb_res, -1))
            res = 0;
    }
    FUNC5();
    FUNC5(); /* multiple calls should be harmless */
#endif
    return res;
}