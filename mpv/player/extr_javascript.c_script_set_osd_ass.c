
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct script_ctx {TYPE_1__* mpctx; int client; } ;
typedef int js_State ;
struct TYPE_2__ {int osd; } ;


 struct script_ctx* jctx (int *) ;
 int jsL_checkint (int *,int) ;
 char* js_tostring (int *,int) ;
 int mp_wakeup_core (TYPE_1__*) ;
 int osd_set_external (int ,int ,int,int,char*) ;
 int push_success (int *) ;

__attribute__((used)) static void script_set_osd_ass(js_State *J)
{
    struct script_ctx *ctx = jctx(J);
    int res_x = jsL_checkint(J, 1);
    int res_y = jsL_checkint(J, 2);
    const char *text = js_tostring(J, 3);
    osd_set_external(ctx->mpctx->osd, ctx->client, res_x, res_y, (char *)text);
    mp_wakeup_core(ctx->mpctx);
    push_success(J);
}
