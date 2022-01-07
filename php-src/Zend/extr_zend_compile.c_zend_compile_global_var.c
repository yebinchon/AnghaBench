
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {int constant; } ;
struct TYPE_18__ {scalar_t__ op_type; TYPE_1__ u; } ;
typedef TYPE_2__ znode ;
struct TYPE_19__ {int extended_value; } ;
typedef TYPE_3__ zend_op ;
struct TYPE_20__ {struct TYPE_20__** child; } ;
typedef TYPE_4__ zend_ast ;


 int E_COMPILE_ERROR ;
 scalar_t__ IS_CONST ;
 scalar_t__ SUCCESS ;
 int ZEND_AST_VAR ;
 int ZEND_BIND_GLOBAL ;
 int ZEND_FETCH_GLOBAL_LOCK ;
 int ZEND_FETCH_W ;
 int Z_STR (int ) ;
 int convert_to_string (int *) ;
 scalar_t__ is_this_fetch (TYPE_4__*) ;
 int zend_alloc_cache_slot () ;
 int zend_ast_create (int ,int ) ;
 int zend_ast_create_znode (TYPE_2__*) ;
 int zend_compile_expr (TYPE_2__*,TYPE_4__*) ;
 int zend_emit_assign_ref_znode (int ,TYPE_2__*) ;
 TYPE_3__* zend_emit_op (TYPE_2__*,int ,TYPE_2__*,TYPE_2__*) ;
 int zend_error_noreturn (int ,char*) ;
 int zend_string_addref (int ) ;
 scalar_t__ zend_try_compile_cv (TYPE_2__*,TYPE_4__*) ;

void zend_compile_global_var(zend_ast *ast)
{
 zend_ast *var_ast = ast->child[0];
 zend_ast *name_ast = var_ast->child[0];

 znode name_node, result;

 zend_compile_expr(&name_node, name_ast);
 if (name_node.op_type == IS_CONST) {
  convert_to_string(&name_node.u.constant);
 }

 if (is_this_fetch(var_ast)) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot use $this as global variable");
 } else if (zend_try_compile_cv(&result, var_ast) == SUCCESS) {
  zend_op *opline = zend_emit_op(((void*)0), ZEND_BIND_GLOBAL, &result, &name_node);
  opline->extended_value = zend_alloc_cache_slot();
 } else {



  zend_op *opline = zend_emit_op(&result, ZEND_FETCH_W, &name_node, ((void*)0));
  opline->extended_value = ZEND_FETCH_GLOBAL_LOCK;

  if (name_node.op_type == IS_CONST) {
   zend_string_addref(Z_STR(name_node.u.constant));
  }

  zend_emit_assign_ref_znode(
   zend_ast_create(ZEND_AST_VAR, zend_ast_create_znode(&name_node)),
   &result
  );
 }
}
