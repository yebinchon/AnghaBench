
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_scope {struct hlsl_scope* upper; } ;
struct hlsl_parse_ctx {struct hlsl_scope* cur_scope; } ;
typedef int BOOL ;


 int FALSE ;
 int TRACE (char*) ;
 int TRUE ;

BOOL pop_scope(struct hlsl_parse_ctx *ctx)
{
    struct hlsl_scope *prev_scope = ctx->cur_scope->upper;
    if (!prev_scope)
        return FALSE;

    TRACE("Popping current scope\n");
    ctx->cur_scope = prev_scope;
    return TRUE;
}
