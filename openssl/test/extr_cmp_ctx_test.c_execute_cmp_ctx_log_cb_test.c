
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ctx; } ;
typedef TYPE_1__ OSSL_CMP_CTX_TEST_FIXTURE ;
typedef int OSSL_CMP_CTX ;


 int ALL ;
 int INFO ;
 scalar_t__ OPENSSL_LINE ;
 int OSSL_CMP_CTX_set_log_cb (int *,int *) ;
 int OSSL_CMP_CTX_set_log_verbosity (int *,int ) ;
 int OSSL_CMP_LOG_DEBUG ;
 int OSSL_CMP_LOG_ERR ;
 int OSSL_CMP_LOG_INFO ;
 int OSSL_CMP_debug (char*) ;
 int OSSL_CMP_err (char*) ;
 int OSSL_CMP_log2 (int ,char*,char*,char) ;
 int OSSL_CMP_log_close () ;
 int OSSL_CMP_log_open () ;
 int OSSL_CMP_warn (char*) ;
 int OSSL_TRACE (int ,char*) ;
 int TEST_int_eq (int,int) ;
 int TEST_true (int ) ;
 int * test_log_cb ;
 int test_log_cb_res ;
 scalar_t__ test_log_line ;

__attribute__((used)) static int execute_cmp_ctx_log_cb_test(OSSL_CMP_CTX_TEST_FIXTURE *fixture)
{
    int res = 1;

    OSSL_CMP_CTX *ctx = fixture->ctx;

    OSSL_TRACE(ALL, "this general trace message is not shown by default\n");

    OSSL_CMP_log_open();
    OSSL_CMP_log_open();

    if (!TEST_true(OSSL_CMP_CTX_set_log_cb(ctx, ((void*)0)))) {
        res = 0;
    } else {
        OSSL_CMP_err("this should be printed as CMP error message");
        OSSL_CMP_warn("this should be printed as CMP warning message");
        OSSL_CMP_debug("this should not be printed");
        TEST_true(OSSL_CMP_CTX_set_log_verbosity(ctx, OSSL_CMP_LOG_DEBUG));
        OSSL_CMP_debug("this should be printed as CMP debug message");
        TEST_true(OSSL_CMP_CTX_set_log_verbosity(ctx, OSSL_CMP_LOG_INFO));
    }
    if (!TEST_true(OSSL_CMP_CTX_set_log_cb(ctx, test_log_cb))) {
        res = 0;
    } else {
        test_log_line = OPENSSL_LINE + 1;
        OSSL_CMP_log2(INFO, "%s%c", "o", 'k');
        if (!TEST_int_eq(test_log_cb_res, 1))
            res = 0;
        OSSL_CMP_CTX_set_log_verbosity(ctx, OSSL_CMP_LOG_ERR);
        test_log_cb_res = -1;
        test_log_line = OPENSSL_LINE + 1;
        OSSL_CMP_log2(INFO, "%s%c", "o", 'k');
        if (!TEST_int_eq(test_log_cb_res, -1))
            res = 0;
    }
    OSSL_CMP_log_close();
    OSSL_CMP_log_close();

    return res;
}
