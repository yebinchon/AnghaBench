
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int js_State ;


 int js_endtry (int *) ;
 int js_hasproperty (int *,int,char*) ;
 scalar_t__ js_isobject (int *,int) ;
 char* js_tostring (int *,int) ;
 scalar_t__ js_try (int *) ;
 int set_last_error (struct script_ctx*,int,char*) ;

__attribute__((used)) static void s_top_to_last_error(struct script_ctx *ctx, js_State *J)
{
    set_last_error(ctx, 1, "unknown error");
    if (js_try(J))
        return;
    if (js_isobject(J, -1))
        js_hasproperty(J, -1, "stack");
    set_last_error(ctx, 1, js_tostring(J, -1));
    js_endtry(J);
}
