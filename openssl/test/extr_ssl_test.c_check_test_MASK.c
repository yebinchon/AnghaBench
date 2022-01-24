#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {scalar_t__ result; scalar_t__ session_ticket_do_not_call; } ;
typedef  int /*<<< orphan*/  SSL_TEST_CTX ;
typedef  TYPE_1__ HANDSHAKE_RESULT ;

/* Variables and functions */
 scalar_t__ SSL_TEST_SUCCESS ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC6 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC11 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC12 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC15 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC18 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC19 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC20 (TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC21(HANDSHAKE_RESULT *result, SSL_TEST_CTX *test_ctx)
{
    int ret = 1;
    ret &= FUNC10(result, test_ctx);
    ret &= FUNC0(result, test_ctx);
    if (result->result == SSL_TEST_SUCCESS) {
        ret &= FUNC9(result, test_ctx);
        ret &= FUNC16(result, test_ctx);
        ret &= FUNC18(result, test_ctx);
        ret &= FUNC7(result, test_ctx);
        ret &= FUNC17(result, test_ctx);
        ret &= (result->session_ticket_do_not_call == 0);
#ifndef OPENSSL_NO_NEXTPROTONEG
        ret &= FUNC8(result, test_ctx);
#endif
        ret &= FUNC2(result, test_ctx);
        ret &= FUNC1(result, test_ctx);
        ret &= FUNC19(result, test_ctx);
        ret &= FUNC11(result, test_ctx);
        ret &= FUNC20(result, test_ctx);
        ret &= FUNC13(result, test_ctx);
        ret &= FUNC14(result, test_ctx);
        ret &= FUNC15(result, test_ctx);
        ret &= FUNC12(result, test_ctx);
        ret &= FUNC4(result, test_ctx);
        ret &= FUNC5(result, test_ctx);
        ret &= FUNC6(result, test_ctx);
        ret &= FUNC3(result, test_ctx);
    }
    return ret;
}