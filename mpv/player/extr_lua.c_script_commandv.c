
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int client; } ;
typedef int lua_State ;


 int MP_ARRAY_SIZE (char const**) ;
 int check_error (int *,int ) ;
 struct script_ctx* get_ctx (int *) ;
 int luaL_error (int *,char*,...) ;
 int lua_gettop (int *) ;
 char* lua_tostring (int *,int) ;
 int mpv_command (int ,char const**) ;

__attribute__((used)) static int script_commandv(lua_State *L)
{
    struct script_ctx *ctx = get_ctx(L);
    int num = lua_gettop(L);
    const char *args[50];
    if (num + 1 > MP_ARRAY_SIZE(args))
        luaL_error(L, "too many arguments");
    for (int n = 1; n <= num; n++) {
        const char *s = lua_tostring(L, n);
        if (!s)
            luaL_error(L, "argument %d is not a string", n);
        args[n - 1] = s;
    }
    args[num] = ((void*)0);
    return check_error(L, mpv_command(ctx->client, args));
}
