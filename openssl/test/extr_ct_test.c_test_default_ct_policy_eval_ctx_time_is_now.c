
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int CT_POLICY_EVAL_CTX ;


 int CT_POLICY_EVAL_CTX_free (int *) ;
 int CT_POLICY_EVAL_CTX_get_time (int *) ;
 int * CT_POLICY_EVAL_CTX_new () ;
 int TEST_time_t_le (int ,int const) ;
 int abs (int) ;
 scalar_t__ difftime (int ,int const) ;
 int time (int *) ;

__attribute__((used)) static int test_default_ct_policy_eval_ctx_time_is_now(void)
{
    int success = 0;
    CT_POLICY_EVAL_CTX *ct_policy_ctx = CT_POLICY_EVAL_CTX_new();
    const time_t default_time =
        (time_t)(CT_POLICY_EVAL_CTX_get_time(ct_policy_ctx) / 1000);
    const time_t time_tolerance = 600;

    if (!TEST_time_t_le(abs((int)difftime(time(((void*)0)), default_time)),
                        time_tolerance))
        goto end;

    success = 1;
end:
    CT_POLICY_EVAL_CTX_free(ct_policy_ctx);
    return success;
}
