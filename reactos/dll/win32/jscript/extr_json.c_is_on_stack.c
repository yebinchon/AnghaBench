
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t stack_top; int ** stack; } ;
typedef TYPE_1__ stringify_ctx_t ;
typedef int jsdisp_t ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;

__attribute__((used)) static BOOL is_on_stack(stringify_ctx_t *ctx, jsdisp_t *obj)
{
    size_t i = ctx->stack_top;
    while(i--) {
        if(ctx->stack[i] == obj)
            return TRUE;
    }
    return FALSE;
}
