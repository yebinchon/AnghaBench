
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__* ptr; } ;
typedef TYPE_1__ parser_ctx_t ;
typedef scalar_t__ WCHAR ;
typedef int BOOL ;


 int FALSE ;
 int JS_E_SYNTAX ;
 int TRUE ;
 int set_error (TYPE_1__*,int ) ;

__attribute__((used)) static BOOL explicit_error(parser_ctx_t *ctx, void *obj, WCHAR next)
{
    if(obj || *(ctx->ptr-1)==next) return TRUE;

    set_error(ctx, JS_E_SYNTAX);
    return FALSE;
}
