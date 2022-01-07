
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref; int entry; int name; } ;
typedef TYPE_1__ function_local_t ;
struct TYPE_6__ {int locals_cnt; int locals; int heap; } ;
typedef TYPE_2__ compiler_ctx_t ;
typedef int BSTR ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 TYPE_1__* heap_pool_alloc (int *,int) ;
 int wine_rb_put (int *,int ,int *) ;

__attribute__((used)) static BOOL alloc_local(compiler_ctx_t *ctx, BSTR name, int ref)
{
    function_local_t *local;

    local = heap_pool_alloc(&ctx->heap, sizeof(*local));
    if(!local)
        return FALSE;

    local->name = name;
    local->ref = ref;
    wine_rb_put(&ctx->locals, name, &local->entry);
    ctx->locals_cnt++;
    return TRUE;
}
