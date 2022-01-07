
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlsl_scope {int entry; struct hlsl_scope* upper; int types; int vars; } ;
struct hlsl_parse_ctx {int scopes; struct hlsl_scope* cur_scope; } ;


 int ERR (char*) ;
 int TRACE (char*) ;
 int compare_hlsl_types_rb ;
 struct hlsl_scope* d3dcompiler_alloc (int) ;
 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int wine_rb_init (int *,int ) ;

void push_scope(struct hlsl_parse_ctx *ctx)
{
    struct hlsl_scope *new_scope = d3dcompiler_alloc(sizeof(*new_scope));

    if (!new_scope)
    {
        ERR("Out of memory!\n");
        return;
    }
    TRACE("Pushing a new scope\n");
    list_init(&new_scope->vars);
    wine_rb_init(&new_scope->types, compare_hlsl_types_rb);
    new_scope->upper = ctx->cur_scope;
    ctx->cur_scope = new_scope;
    list_add_tail(&ctx->scopes, &new_scope->entry);
}
