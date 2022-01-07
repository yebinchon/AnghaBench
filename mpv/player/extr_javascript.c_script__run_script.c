
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct script_ctx {char* filename; } ;
typedef int js_State ;


 int add_functions (int *,struct script_ctx*) ;
 struct script_ctx* jctx (int *) ;
 int js_call (int *,int ) ;
 int js_copy (int *,int ) ;
 int js_error (int *,char*) ;
 int js_hasproperty (int *,int ,char*) ;
 int js_iscallable (int *,int) ;
 int js_loadstring (int *,char*,int ) ;
 int js_pcall (int *,int ) ;
 int norm_err_proto_js ;
 int run_file (int *,char*) ;

__attribute__((used)) static void script__run_script(js_State *J)
{
    js_loadstring(J, "@/norm_err.js", norm_err_proto_js);
    js_copy(J, 0);
    js_pcall(J, 0);

    struct script_ctx *ctx = jctx(J);
    add_functions(J, ctx);
    run_file(J, "@/defaults.js");
    run_file(J, ctx->filename);

    if (!js_hasproperty(J, 0, "mp_event_loop") || !js_iscallable(J, -1))
        js_error(J, "no event loop function");
    js_copy(J, 0);
    js_call(J, 0);
}
