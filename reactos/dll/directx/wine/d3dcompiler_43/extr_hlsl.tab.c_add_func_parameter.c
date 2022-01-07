
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct source_location {int dummy; } ;
struct parse_parameter {int modifiers; int reg_reservation; int semantic; int name; int type; } ;
struct list {int dummy; } ;
struct hlsl_ir_var {int param_entry; int modifiers; int reg_reservation; int semantic; int name; struct source_location loc; int data_type; } ;
struct TYPE_2__ {int cur_scope; } ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int TRUE ;
 int add_declaration (int ,struct hlsl_ir_var*,int ) ;
 struct hlsl_ir_var* d3dcompiler_alloc (int) ;
 int free_declaration (struct hlsl_ir_var*) ;
 TYPE_1__ hlsl_ctx ;
 int list_add_tail (struct list*,int *) ;

__attribute__((used)) static BOOL add_func_parameter(struct list *list, struct parse_parameter *param, const struct source_location *loc)
{
    struct hlsl_ir_var *decl = d3dcompiler_alloc(sizeof(*decl));

    if (!decl)
    {
        ERR("Out of memory.\n");
        return FALSE;
    }
    decl->data_type = param->type;
    decl->loc = *loc;
    decl->name = param->name;
    decl->semantic = param->semantic;
    decl->reg_reservation = param->reg_reservation;
    decl->modifiers = param->modifiers;

    if (!add_declaration(hlsl_ctx.cur_scope, decl, FALSE))
    {
        free_declaration(decl);
        return FALSE;
    }
    list_add_tail(list, &decl->param_entry);
    return TRUE;
}
