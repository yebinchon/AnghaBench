#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/ * log_cb; } ;
struct TYPE_6__ {TYPE_2__* ctx; } ;
typedef  TYPE_1__ OSSL_CMP_CTX_TEST_FIXTURE ;
typedef  TYPE_2__ OSSL_CMP_CTX ;

/* Variables and functions */
 int /*<<< orphan*/  CMP_R_INVALID_ARGS ; 
 int /*<<< orphan*/  CMP_R_MULTIPLE_SAN_SOURCES ; 
 int /*<<< orphan*/  CMP_R_NULL_ARGUMENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 char* STR_SEP ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 char* max_str_literal ; 
 scalar_t__ msg_total_size ; 
 int /*<<< orphan*/ * msg_total_size_log_cb ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(OSSL_CMP_CTX_TEST_FIXTURE *fixture)
{
    OSSL_CMP_CTX *ctx = fixture->ctx;
    int base_err_msg_size, expected_size;
    int res = 1;

    if (!FUNC4(FUNC2(ctx, NULL)))
        res = 0;
    if (!FUNC4(ctx->log_cb == NULL))
        res = 0;

# ifndef OPENSSL_NO_STDIO
    FUNC0(0, CMP_R_MULTIPLE_SAN_SOURCES);
    FUNC1(ctx); /* should print above error to STDERR */
# endif

    /* this should work regardless of OPENSSL_NO_STDIO and OPENSSL_NO_TRACE: */
    if (!FUNC4(FUNC2(ctx, msg_total_size_log_cb)))
        res = 0;
    if (!FUNC4(ctx->log_cb == msg_total_size_log_cb)) {
        res = 0;
    } else {
        FUNC0(0, CMP_R_INVALID_ARGS);
        base_err_msg_size = FUNC8("INVALID_ARGS");
        FUNC0(0, CMP_R_NULL_ARGUMENT);
        base_err_msg_size += FUNC8("NULL_ARGUMENT");
        expected_size = base_err_msg_size;
        FUNC5("data1"); /* should prepend separator " : " */
        expected_size += FUNC8(" : " "data1");
        FUNC5("data2"); /* should prepend separator " : " */
        expected_size += FUNC8(" : " "data2");
        FUNC6("new line"); /* should prepend separator "\n" */
        expected_size += FUNC8("\n" "new line");
        FUNC1(ctx);
        if (!FUNC3(msg_total_size, expected_size))
            res = 0;

        FUNC0(0, CMP_R_INVALID_ARGS);
        base_err_msg_size = FUNC8("INVALID_ARGS") + FUNC8(" : ");
        expected_size = base_err_msg_size;
        while (expected_size < 4096) { /* force split */
            FUNC7(STR_SEP, max_str_literal);
            expected_size += FUNC8(STR_SEP) + FUNC8(max_str_literal);
        }
        expected_size += base_err_msg_size - 2 * FUNC8(STR_SEP);
        msg_total_size = 0;
        FUNC1(ctx);
        if (!FUNC3(msg_total_size, expected_size))
            res = 0;
    }

    return res;
}