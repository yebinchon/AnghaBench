
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct test_context* opt; } ;
struct TYPE_4__ {int auth_token_key; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;
struct test_context {TYPE_2__ session; TYPE_3__ multi; } ;


 int free (struct test_context*) ;
 int free_key_ctx (int *) ;
 int wipe_auth_token (TYPE_3__*) ;

__attribute__((used)) static int
teardown(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    free_key_ctx(&ctx->multi.opt.auth_token_key);
    wipe_auth_token(&ctx->multi);

    free(ctx->session.opt);
    free(ctx);

    return 0;
}
