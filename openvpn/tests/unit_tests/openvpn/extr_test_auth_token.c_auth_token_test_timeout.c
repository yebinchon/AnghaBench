
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* opt; } ;
struct TYPE_9__ {scalar_t__ auth_token_lifetime; } ;
struct TYPE_11__ {TYPE_2__ opt; int auth_token; int * auth_token_initial; } ;
struct TYPE_10__ {int password; } ;
struct test_context {TYPE_5__ session; TYPE_4__ multi; TYPE_3__ up; } ;
struct TYPE_8__ {int renegotiate_seconds; int auth_token_lifetime; } ;


 int AUTH_TOKEN_EXPIRED ;
 int AUTH_TOKEN_HMAC_OK ;
 int assert_int_equal (int ,int) ;
 int free (int *) ;
 int generate_auth_token (TYPE_3__*,TYPE_4__*) ;
 int now ;
 int strcpy (int ,int ) ;
 int * strdup (int ) ;
 int verify_auth_token (TYPE_3__*,TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static void
auth_token_test_timeout(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    now = 100000;
    generate_auth_token(&ctx->up, &ctx->multi);
    strcpy(ctx->up.password, ctx->multi.auth_token);


    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);


    now = 100000 - 100;
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED);


    now = 100000 + 2*ctx->session.opt->renegotiate_seconds - 20;
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);


    now = 100000 + 2*ctx->session.opt->renegotiate_seconds + 20;
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED);


    ctx->multi.auth_token_initial = strdup(ctx->up.password);
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);


    now = 100000 + ctx->session.opt->auth_token_lifetime + 1;
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED);

    free(ctx->multi.auth_token_initial);
    ctx->multi.auth_token_initial = ((void*)0);


    now = 100000;
    while (now < 100000 + ctx->session.opt->auth_token_lifetime + 1)
    {
        assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                         AUTH_TOKEN_HMAC_OK);
        generate_auth_token(&ctx->up, &ctx->multi);
        strcpy(ctx->up.password, ctx->multi.auth_token);
        now += ctx->session.opt->renegotiate_seconds;
    }


    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK|AUTH_TOKEN_EXPIRED);
    ctx->multi.opt.auth_token_lifetime = 0;


    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);
}
