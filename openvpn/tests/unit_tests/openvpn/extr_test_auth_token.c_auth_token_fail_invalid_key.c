
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int auth_token_key; } ;
struct TYPE_8__ {TYPE_1__ opt; int auth_token; } ;
struct TYPE_7__ {int password; } ;
struct test_context {int session; TYPE_3__ multi; TYPE_2__ up; int kt; } ;
struct key {int dummy; } ;
typedef int key ;


 int AUTH_TOKEN_HMAC_OK ;
 int assert_int_equal (int ,int ) ;
 int free_key_ctx (int *) ;
 int generate_auth_token (TYPE_2__*,TYPE_3__*) ;
 int init_key_ctx (int *,struct key*,int *,int,char*) ;
 int memset (struct key*,char,int) ;
 int strcpy (int ,int ) ;
 int verify_auth_token (TYPE_2__*,TYPE_3__*,int *) ;

__attribute__((used)) static void
auth_token_fail_invalid_key(void **state)
{
    struct test_context *ctx = (struct test_context *) *state;

    generate_auth_token(&ctx->up, &ctx->multi);
    strcpy(ctx->up.password, ctx->multi.auth_token);
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);


    struct key key;
    memset(&key, '1', sizeof(key));
    free_key_ctx(&ctx->multi.opt.auth_token_key);
    init_key_ctx(&ctx->multi.opt.auth_token_key, &key, &ctx->kt, 0, "TEST");

    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session), 0);


    memset(&key, 0, sizeof(key));
    free_key_ctx(&ctx->multi.opt.auth_token_key);
    init_key_ctx(&ctx->multi.opt.auth_token_key, &key, &ctx->kt, 0, "TEST");
    assert_int_equal(verify_auth_token(&ctx->up, &ctx->multi, &ctx->session),
                     AUTH_TOKEN_HMAC_OK);

}
