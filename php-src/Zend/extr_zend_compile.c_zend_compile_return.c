
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


struct TYPE_21__ {int constant; } ;
struct TYPE_22__ {int op_type; TYPE_1__ u; } ;
typedef TYPE_2__ znode ;
struct TYPE_23__ {int extended_value; } ;
typedef TYPE_3__ zend_op ;
typedef int zend_bool ;
struct TYPE_24__ {struct TYPE_24__** child; } ;
typedef TYPE_4__ zend_ast ;
struct TYPE_20__ {int fn_flags; scalar_t__ arg_info; } ;


 int BP_VAR_W ;
 TYPE_19__* CG (int ) ;
 int IS_CONST ;
 int IS_CV ;
 int IS_TMP_VAR ;
 int IS_VAR ;
 int ZEND_ACC_GENERATOR ;
 int ZEND_ACC_HAS_FINALLY_BLOCK ;
 int ZEND_ACC_HAS_RETURN_TYPE ;
 int ZEND_ACC_RETURN_REFERENCE ;
 int ZEND_MAKE_REF ;
 int ZEND_QM_ASSIGN ;
 int ZEND_RETURN ;
 int ZEND_RETURNS_FUNCTION ;
 int ZEND_RETURNS_VALUE ;
 int ZEND_RETURN_BY_REF ;
 int ZVAL_NULL (int *) ;
 int active_op_array ;
 int zend_compile_expr (TYPE_2__*,TYPE_4__*) ;
 int zend_compile_var (TYPE_2__*,TYPE_4__*,int ,int) ;
 TYPE_3__* zend_emit_op (TYPE_2__*,int ,TYPE_2__*,int *) ;
 int zend_emit_op_tmp (TYPE_2__*,int ,TYPE_2__*,int *) ;
 int zend_emit_return_type_check (TYPE_2__*,scalar_t__,int ) ;
 int zend_handle_loops_and_finally (TYPE_2__*) ;
 scalar_t__ zend_has_finally () ;
 scalar_t__ zend_is_call (TYPE_4__*) ;
 scalar_t__ zend_is_variable (TYPE_4__*) ;

void zend_compile_return(zend_ast *ast)
{
 zend_ast *expr_ast = ast->child[0];
 zend_bool is_generator = (CG(active_op_array)->fn_flags & ZEND_ACC_GENERATOR) != 0;
 zend_bool by_ref = (CG(active_op_array)->fn_flags & ZEND_ACC_RETURN_REFERENCE) != 0;

 znode expr_node;
 zend_op *opline;

 if (is_generator) {

  by_ref = 0;
 }

 if (!expr_ast) {
  expr_node.op_type = IS_CONST;
  ZVAL_NULL(&expr_node.u.constant);
 } else if (by_ref && zend_is_variable(expr_ast)) {
  zend_compile_var(&expr_node, expr_ast, BP_VAR_W, 1);
 } else {
  zend_compile_expr(&expr_node, expr_ast);
 }

 if ((CG(active_op_array)->fn_flags & ZEND_ACC_HAS_FINALLY_BLOCK)
  && (expr_node.op_type == IS_CV || (by_ref && expr_node.op_type == IS_VAR))
  && zend_has_finally()) {

  if (by_ref) {
   zend_emit_op(&expr_node, ZEND_MAKE_REF, &expr_node, ((void*)0));
  } else {
   zend_emit_op_tmp(&expr_node, ZEND_QM_ASSIGN, &expr_node, ((void*)0));
  }
 }


 if (!is_generator && CG(active_op_array)->fn_flags & ZEND_ACC_HAS_RETURN_TYPE) {
  zend_emit_return_type_check(
   expr_ast ? &expr_node : ((void*)0), CG(active_op_array)->arg_info - 1, 0);
 }

 zend_handle_loops_and_finally((expr_node.op_type & (IS_TMP_VAR | IS_VAR)) ? &expr_node : ((void*)0));

 opline = zend_emit_op(((void*)0), by_ref ? ZEND_RETURN_BY_REF : ZEND_RETURN,
  &expr_node, ((void*)0));

 if (by_ref && expr_ast) {
  if (zend_is_call(expr_ast)) {
   opline->extended_value = ZEND_RETURNS_FUNCTION;
  } else if (!zend_is_variable(expr_ast)) {
   opline->extended_value = ZEND_RETURNS_VALUE;
  }
 }
}
