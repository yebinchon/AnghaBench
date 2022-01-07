
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int global_code; } ;
typedef TYPE_1__ bytecode_t ;
struct TYPE_10__ {int global; } ;
struct TYPE_9__ {int site; TYPE_3__* ctx; } ;
typedef TYPE_2__ JScript ;
typedef int HRESULT ;


 int EXEC_GLOBAL ;
 int IActiveScriptSite_OnEnterScript (int ) ;
 int IActiveScriptSite_OnLeaveScript (int ) ;
 int clear_ei (TYPE_3__*) ;
 int exec_source (TYPE_3__*,int ,TYPE_1__*,int *,int *,int *,int *,int ,int ,int *,int *) ;

__attribute__((used)) static HRESULT exec_global_code(JScript *This, bytecode_t *code)
{
    HRESULT hres;

    IActiveScriptSite_OnEnterScript(This->site);

    clear_ei(This->ctx);
    hres = exec_source(This->ctx, EXEC_GLOBAL, code, &code->global_code, ((void*)0), ((void*)0), ((void*)0), This->ctx->global, 0, ((void*)0), ((void*)0));

    IActiveScriptSite_OnLeaveScript(This->site);
    return hres;
}
