
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* auth_token; } ;
struct TYPE_5__ {int password; int username; } ;
struct test_context {int session; TYPE_2__ multi; TYPE_1__ up; } ;


 int AUTH_TOKEN_EXPIRED ;
 int AUTH_TOKEN_HMAC_OK ;
 int AUTH_TOKEN_VALID_EMPTYUSER ;
 int CLEAR (int ) ;
 int assert_int_equal (int ,int) ;
 int generate_auth_token (TYPE_1__*,TYPE_2__*) ;
 int now ;
 int strcpy (int ,char*) ;
 int verify_auth_token (TYPE_1__*,TYPE_2__*,int *) ;
 int zerohmac (int ) ;

__attribute__((used)) static void
auth_token_test_empty_user(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    CLEAR(ctx->up.username);
    now = 0;

    generate_auth_token(&ctx->up, &ctx->multi);
    strcpy(ctx->up.password, ctx->multi.auth_token);
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);

    now = 100000;
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED);
    strcpy(ctx->up.username, "test user name");

    now = 0;
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_VALID_EMPTYUSER);

    strcpy(ctx->up.username, "test user name");
    now = 100000;
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED|AUTH_TOKEN_VALID_EMPTYUSER);

    zerohmac(ctx->up.password);
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     0);
}
