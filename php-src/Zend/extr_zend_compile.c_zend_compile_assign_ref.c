
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {scalar_t__ op_type; } ;
typedef TYPE_1__ znode ;
struct TYPE_20__ {scalar_t__ opcode; int extended_value; } ;
typedef TYPE_2__ zend_op ;
struct TYPE_21__ {scalar_t__ kind; struct TYPE_21__** child; } ;
typedef TYPE_3__ zend_ast ;
typedef int uint32_t ;


 int BP_VAR_W ;
 int E_COMPILE_ERROR ;
 scalar_t__ IS_CV ;
 scalar_t__ IS_VAR ;
 scalar_t__ ZEND_ASSIGN_OBJ_REF ;
 int ZEND_ASSIGN_REF ;
 scalar_t__ ZEND_ASSIGN_STATIC_PROP_REF ;
 scalar_t__ ZEND_AST_VAR ;
 scalar_t__ ZEND_AST_ZVAL ;
 scalar_t__ ZEND_FETCH_OBJ_W ;
 int ZEND_FETCH_REF ;
 scalar_t__ ZEND_FETCH_STATIC_PROP_W ;
 int ZEND_MAKE_REF ;
 int ZEND_RETURNS_FUNCTION ;
 scalar_t__ is_this_fetch (TYPE_3__*) ;
 int zend_compile_var (TYPE_1__*,TYPE_3__*,int ,int) ;
 int zend_delayed_compile_begin () ;
 TYPE_2__* zend_delayed_compile_end (int ) ;
 int zend_delayed_compile_var (TYPE_1__*,TYPE_3__*,int ,int) ;
 TYPE_2__* zend_emit_op (TYPE_1__*,int ,TYPE_1__*,TYPE_1__*) ;
 int zend_emit_op_data (TYPE_1__*) ;
 int zend_ensure_writable_variable (TYPE_3__*) ;
 int zend_error_noreturn (int ,char*) ;
 scalar_t__ zend_is_call (TYPE_3__*) ;

void zend_compile_assign_ref(znode *result, zend_ast *ast)
{
 zend_ast *target_ast = ast->child[0];
 zend_ast *source_ast = ast->child[1];

 znode target_node, source_node;
 zend_op *opline;
 uint32_t offset, flags;

 if (is_this_fetch(target_ast)) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot re-assign $this");
 }
 zend_ensure_writable_variable(target_ast);

 offset = zend_delayed_compile_begin();
 zend_delayed_compile_var(&target_node, target_ast, BP_VAR_W, 1);
 zend_compile_var(&source_node, source_ast, BP_VAR_W, 1);

 if ((target_ast->kind != ZEND_AST_VAR
   || target_ast->child[0]->kind != ZEND_AST_ZVAL)
  && source_node.op_type != IS_CV) {






  zend_emit_op(&source_node, ZEND_MAKE_REF, &source_node, ((void*)0));
 }

 opline = zend_delayed_compile_end(offset);

 if (source_node.op_type != IS_VAR && zend_is_call(source_ast)) {
  zend_error_noreturn(E_COMPILE_ERROR, "Cannot use result of built-in function in write context");
 }

 flags = zend_is_call(source_ast) ? ZEND_RETURNS_FUNCTION : 0;

 if (opline && opline->opcode == ZEND_FETCH_OBJ_W) {
  opline->opcode = ZEND_ASSIGN_OBJ_REF;
  opline->extended_value &= ~ZEND_FETCH_REF;
  opline->extended_value |= flags;
  zend_emit_op_data(&source_node);
  if (result != ((void*)0)) {
   *result = target_node;
  }
 } else if (opline && opline->opcode == ZEND_FETCH_STATIC_PROP_W) {
  opline->opcode = ZEND_ASSIGN_STATIC_PROP_REF;
  opline->extended_value &= ~ZEND_FETCH_REF;
  opline->extended_value |= flags;
  zend_emit_op_data(&source_node);
  if (result != ((void*)0)) {
   *result = target_node;
  }
 } else {
  opline = zend_emit_op(result, ZEND_ASSIGN_REF, &target_node, &source_node);
  opline->extended_value = flags;
 }
}
