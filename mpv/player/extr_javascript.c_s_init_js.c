
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {int dummy; } ;
typedef int js_State ;


 int js_endtry (int *) ;
 int js_newcfunction (int *,int ,char*,int ) ;
 int js_pushglobal (int *) ;
 int js_setcontext (int *,struct script_ctx*) ;
 int js_setreport (int *,int ) ;
 scalar_t__ js_try (int *) ;
 int report_handler ;
 int script__run_script ;

__attribute__((used)) static int s_init_js(js_State *J, struct script_ctx *ctx)
{
    if (js_try(J))
        return 1;
    js_setcontext(J, ctx);
    js_setreport(J, report_handler);
    js_newcfunction(J, script__run_script, "run_script", 0);
    js_pushglobal(J);
    js_endtry(J);
    return 0;
}
