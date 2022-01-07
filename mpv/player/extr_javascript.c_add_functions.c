
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int filename; int client; } ;
typedef int js_State ;


 int add_package_fns (int *,char*,int ) ;
 int js_copy (int *,int ) ;
 int js_getproperty (int *,int ,char*) ;
 int js_pop (int *,int) ;
 int js_pushstring (int *,int ) ;
 int js_setproperty (int *,int,char*) ;
 int main_fns ;
 int mpv_client_name (int ) ;
 int utils_fns ;

__attribute__((used)) static void add_functions(js_State *J, struct script_ctx *ctx)
{
    js_copy(J, 0);
    add_package_fns(J, "mp", main_fns);
    js_getproperty(J, 0, "mp");
    add_package_fns(J, "utils", utils_fns);

    js_pushstring(J, mpv_client_name(ctx->client));
    js_setproperty(J, -2, "script_name");

    js_pushstring(J, ctx->filename);
    js_setproperty(J, -2, "script_file");

    js_pop(J, 2);
}
