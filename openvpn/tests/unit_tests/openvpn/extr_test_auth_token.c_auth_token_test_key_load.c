
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int auth_token_key; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;
struct TYPE_5__ {int password; } ;
struct test_context {int session; TYPE_3__ multi; TYPE_2__ up; } ;


 int INLINE_FILE_TAG ;
 int allx01inline ;
 int assert_false (int ) ;
 int assert_true (int ) ;
 int auth_token_init_secret (int *,int ,int ) ;
 int free_key_ctx (int *) ;
 int now0key0 ;
 int strcpy (int ,int ) ;
 int verify_auth_token (TYPE_2__*,TYPE_3__*,int *) ;
 int zeroinline ;

__attribute__((used)) static void
auth_token_test_key_load(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    free_key_ctx(&ctx->multi.opt.auth_token_key);
    auth_token_init_secret(&ctx->multi.opt.auth_token_key, INLINE_FILE_TAG, zeroinline);
    strcpy(ctx->up.password, now0key0);
    assert_true(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session));

    free_key_ctx(&ctx->multi.opt.auth_token_key);
    auth_token_init_secret(&ctx->multi.opt.auth_token_key, INLINE_FILE_TAG, allx01inline);
    assert_false(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session));
}
