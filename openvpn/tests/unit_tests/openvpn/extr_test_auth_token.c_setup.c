
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tls_options {int dummy; } ;
struct TYPE_13__ {int digest; } ;
struct TYPE_11__ {int auth_token_generate; int auth_token_lifetime; int auth_token_key; } ;
struct TYPE_12__ {TYPE_4__ opt; } ;
struct TYPE_10__ {int password; int username; } ;
struct TYPE_9__ {TYPE_1__* opt; } ;
struct test_context {TYPE_6__ kt; TYPE_5__ multi; TYPE_3__ up; TYPE_2__ session; } ;
struct key {int member_0; } ;
struct TYPE_8__ {int renegotiate_seconds; int auth_token_lifetime; } ;


 TYPE_6__ auth_token_kt () ;
 void* calloc (int,int) ;
 int init_key_ctx (int *,struct key*,TYPE_6__*,int,char*) ;
 scalar_t__ now ;
 int strcpy (int ,char*) ;

__attribute__((used)) static int
setup(void **state)
{
    struct test_context *ctx = calloc(1, sizeof(*ctx));
    *state = ctx;

    struct key key = { 0 };

    ctx->kt = auth_token_kt();
    if (!ctx->kt.digest)
    {
        return 0;
    }
    ctx->multi.opt.auth_token_generate = 1;
    ctx->multi.opt.auth_token_lifetime = 3000;

    ctx->session.opt = calloc(1, sizeof(struct tls_options));
    ctx->session.opt->renegotiate_seconds = 120;
    ctx->session.opt->auth_token_lifetime = 3000;

    strcpy(ctx->up.username, "test user name");
    strcpy(ctx->up.password, "ignored");

    init_key_ctx(&ctx->multi.opt.auth_token_key, &key, &ctx->kt, 0, "TEST");

    now = 0;
    return 0;
}
