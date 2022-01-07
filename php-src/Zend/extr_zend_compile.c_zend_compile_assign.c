
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int znode ;
struct TYPE_20__ {int opcode; } ;
typedef TYPE_1__ zend_op ;
struct TYPE_21__ {int kind; int attr; struct TYPE_21__** child; } ;
typedef TYPE_2__ zend_ast ;
typedef int uint32_t ;


 int BP_VAR_R ;
 int BP_VAR_W ;
 int EMPTY_SWITCH_DEFAULT_CASE () ;
 int E_COMPILE_ERROR ;
 int FAILURE ;
 int ZEND_ASSIGN ;
 int ZEND_ASSIGN_DIM ;
 int ZEND_ASSIGN_OBJ ;
 int ZEND_ASSIGN_STATIC_PROP ;





 int ZEND_MAKE_REF ;
 int ZEND_QM_ASSIGN ;
 scalar_t__ is_this_fetch (TYPE_2__*) ;
 int zend_compile_expr (int *,TYPE_2__*) ;
 int zend_compile_list_assign (int *,TYPE_2__*,int *,int ) ;
 int zend_compile_simple_var_no_cv (int *,TYPE_2__*,int ,int ) ;
 int zend_compile_var (int *,TYPE_2__*,int ,int) ;
 int zend_delayed_compile_begin () ;
 int zend_delayed_compile_dim (int *,TYPE_2__*,int ) ;
 TYPE_1__* zend_delayed_compile_end (int ) ;
 int zend_delayed_compile_prop (int *,TYPE_2__*,int ) ;
 int zend_delayed_compile_var (int *,TYPE_2__*,int ,int ) ;
 int zend_emit_op (int *,int ,int *,int *) ;
 TYPE_1__* zend_emit_op_data (int *) ;
 int zend_emit_op_tmp (int *,int ,int *,int *) ;
 int zend_ensure_writable_variable (TYPE_2__*) ;
 int zend_error_noreturn (int ,char*) ;
 int zend_is_assign_to_self (TYPE_2__*,TYPE_2__*) ;
 int zend_is_variable_or_call (TYPE_2__*) ;
 int zend_propagate_list_refs (TYPE_2__*) ;
 int zend_try_compile_cv (int *,TYPE_2__*) ;

void zend_compile_assign(znode *result, zend_ast *ast)
{
 zend_ast *var_ast = ast->child[0];
 zend_ast *expr_ast = ast->child[1];

 znode var_node, expr_node;
 zend_op *opline;
 uint32_t offset;

 if (is_this_fetch(var_ast)) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot re-assign $this");
 }

 zend_ensure_writable_variable(var_ast);

 switch (var_ast->kind) {
  case 128:
   offset = zend_delayed_compile_begin();
   zend_delayed_compile_var(&var_node, var_ast, BP_VAR_W, 0);
   zend_compile_expr(&expr_node, expr_ast);
   zend_delayed_compile_end(offset);
   zend_emit_op(result, ZEND_ASSIGN, &var_node, &expr_node);
   return;
  case 129:
   offset = zend_delayed_compile_begin();
   zend_delayed_compile_var(result, var_ast, BP_VAR_W, 0);
   zend_compile_expr(&expr_node, expr_ast);

   opline = zend_delayed_compile_end(offset);
   opline->opcode = ZEND_ASSIGN_STATIC_PROP;

   zend_emit_op_data(&expr_node);
   return;
  case 131:
   offset = zend_delayed_compile_begin();
   zend_delayed_compile_dim(result, var_ast, BP_VAR_W);

   if (zend_is_assign_to_self(var_ast, expr_ast)
    && !is_this_fetch(expr_ast)) {

    znode cv_node;

    if (zend_try_compile_cv(&cv_node, expr_ast) == FAILURE) {
     zend_compile_simple_var_no_cv(&expr_node, expr_ast, BP_VAR_R, 0);
    } else {
     zend_emit_op_tmp(&expr_node, ZEND_QM_ASSIGN, &cv_node, ((void*)0));
    }
   } else {
    zend_compile_expr(&expr_node, expr_ast);
   }

   opline = zend_delayed_compile_end(offset);
   opline->opcode = ZEND_ASSIGN_DIM;

   opline = zend_emit_op_data(&expr_node);
   return;
  case 130:
   offset = zend_delayed_compile_begin();
   zend_delayed_compile_prop(result, var_ast, BP_VAR_W);
   zend_compile_expr(&expr_node, expr_ast);

   opline = zend_delayed_compile_end(offset);
   opline->opcode = ZEND_ASSIGN_OBJ;

   zend_emit_op_data(&expr_node);
   return;
  case 132:
   if (zend_propagate_list_refs(var_ast)) {
    if (!zend_is_variable_or_call(expr_ast)) {
     zend_error_noreturn(E_COMPILE_ERROR,
      "Cannot assign reference to non referencable value");
    }

    zend_compile_var(&expr_node, expr_ast, BP_VAR_W, 1);


    zend_emit_op(&expr_node, ZEND_MAKE_REF, &expr_node, ((void*)0));
   } else {
    if (expr_ast->kind == 128) {

     znode cv_node;

     if (zend_try_compile_cv(&cv_node, expr_ast) == FAILURE) {
      zend_compile_simple_var_no_cv(&expr_node, expr_ast, BP_VAR_R, 0);
     } else {
      zend_emit_op_tmp(&expr_node, ZEND_QM_ASSIGN, &cv_node, ((void*)0));
     }
    } else {
     zend_compile_expr(&expr_node, expr_ast);
    }
   }

   zend_compile_list_assign(result, var_ast, &expr_node, var_ast->attr);
   return;
  EMPTY_SWITCH_DEFAULT_CASE();
 }
}
