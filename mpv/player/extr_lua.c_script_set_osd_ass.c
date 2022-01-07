
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct script_ctx {TYPE_1__* mpctx; int client; } ;
typedef int lua_State ;
struct TYPE_2__ {int osd; } ;


 struct script_ctx* get_ctx (int *) ;
 int luaL_checkinteger (int *,int) ;
 char* luaL_checkstring (int *,int) ;
 int mp_wakeup_core (TYPE_1__*) ;
 int osd_set_external (int ,int ,int,int,char*) ;

__attribute__((used)) static int script_set_osd_ass(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    int res_x = luaL_checkinteger(L, 1);
    int res_y = luaL_checkinteger(L, 2);
    const char *text = luaL_checkstring(L, 3);
    if (!text[0])
        text = " ";
    osd_set_external(ctx->mpctx->osd, ctx->client, res_x, res_y, (char *)text);
    mp_wakeup_core(ctx->mpctx);
    return 0;
}
