
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int auth_token; } ;
struct TYPE_5__ {int password; } ;
struct test_context {int session; TYPE_2__ multi; TYPE_1__ up; } ;


 int AUTH_TOKEN_HMAC_OK ;
 int assert_int_equal (int ,int ) ;
 int assert_string_equal (int ,int ) ;
 int generate_auth_token (TYPE_1__*,TYPE_2__*) ;
 scalar_t__ now ;
 int now0key0 ;
 int strcpy (int ,int ) ;
 int strdup (int ) ;
 int verify_auth_token (TYPE_1__*,TYPE_2__*,int *) ;
 int zerohmac (int ) ;

__attribute__((used)) static void
auth_token_test_known_keys(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    now = 0;

    ctx->multi.auth_token = strdup(now0key0);


    zerohmac(ctx->multi.auth_token);

    generate_auth_token(&ctx->up, &ctx->multi);

    assert_string_equal(now0key0, ctx->multi.auth_token);

    strcpy(ctx->up.password, ctx->multi.auth_token);
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);
}
