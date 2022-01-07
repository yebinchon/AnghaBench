
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* func; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int WCHAR ;
struct TYPE_7__ {int var_cnt; } ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int alloc_local (TYPE_2__*,int ,int ) ;
 int compiler_alloc_bstr (TYPE_2__*,int const*) ;
 scalar_t__ find_local (TYPE_2__*,int const*) ;

__attribute__((used)) static BOOL alloc_variable(compiler_ctx_t *ctx, const WCHAR *name)
{
    BSTR ident;

    if(find_local(ctx, name))
        return TRUE;

    ident = compiler_alloc_bstr(ctx, name);
    if(!ident)
        return FALSE;

    return alloc_local(ctx, ident, ctx->func->var_cnt++);
}
