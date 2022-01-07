
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int auth_token_key; } ;
struct TYPE_8__ {int auth_token; TYPE_1__ opt; } ;
struct TYPE_7__ {int password; } ;
struct test_context {int session; TYPE_3__ multi; TYPE_2__ up; } ;


 int INLINE_FILE_TAG ;
 int assert_string_equal (int ,int ) ;
 int assert_true (int ) ;
 int auth_token_init_secret (int *,int ,int ) ;
 int free_key_ctx (int *) ;
 int generate_auth_token (TYPE_2__*,TYPE_3__*) ;
 int now ;
 int random_key ;
 int random_token ;
 int strcpy (int ,int ) ;
 int strdup (int ) ;
 int verify_auth_token (TYPE_2__*,TYPE_3__*,int *) ;
 int zerohmac (int ) ;

__attribute__((used)) static void
auth_token_test_random_keys(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    now = 0x5c331e9c;

    ctx->multi.auth_token = strdup(random_token);

    free_key_ctx(&ctx->multi.opt.auth_token_key);
    auth_token_init_secret(&ctx->multi.opt.auth_token_key, INLINE_FILE_TAG, random_key);


    zerohmac(ctx->multi.auth_token);

    generate_auth_token(&ctx->up, &ctx->multi);

    assert_string_equal(random_token, ctx->multi.auth_token);

    strcpy(ctx->up.password, ctx->multi.auth_token);
    assert_true(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session));
}
