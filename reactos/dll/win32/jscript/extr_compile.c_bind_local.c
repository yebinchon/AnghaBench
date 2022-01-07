
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ using_scope; struct TYPE_6__* next; } ;
typedef TYPE_1__ statement_ctx_t ;
struct TYPE_7__ {int ref; } ;
typedef TYPE_2__ local_ref_t ;
struct TYPE_8__ {int func; TYPE_1__* stat_ctx; } ;
typedef TYPE_3__ compiler_ctx_t ;
typedef int WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 TYPE_2__* lookup_local (int ,int const*) ;

__attribute__((used)) static BOOL bind_local(compiler_ctx_t *ctx, const WCHAR *identifier, int *ret_ref)
{
    statement_ctx_t *iter;
    local_ref_t *ref;

    for(iter = ctx->stat_ctx; iter; iter = iter->next) {
        if(iter->using_scope)
            return FALSE;
    }

    ref = lookup_local(ctx->func, identifier);
    if(!ref)
        return FALSE;

    *ret_ref = ref->ref;
    return TRUE;
}
