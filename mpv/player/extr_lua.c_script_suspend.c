
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int lua_State ;


 int MP_ERR (struct script_ctx*,char*) ;
 struct script_ctx* get_ctx (int *) ;

__attribute__((used)) static int script_suspend(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    MP_ERR(ctx, "mp.suspend() is deprecated and does nothing.\n");
    return 0;
}
