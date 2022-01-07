
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_22__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_23__ {int op_type; } ;
typedef TYPE_1__ znode ;
struct TYPE_25__ {scalar_t__ op2_type; int extended_value; int op2; } ;
typedef TYPE_2__ zend_op ;
struct TYPE_26__ {struct TYPE_26__** child; } ;
typedef TYPE_3__ zend_ast ;
typedef int uint32_t ;
struct TYPE_24__ {int fn_flags; } ;


 TYPE_22__* CG (int ) ;
 int CT_CONSTANT (int ) ;
 scalar_t__ IS_CONST ;
 int IS_UNUSED ;
 int ZEND_ACC_USES_THIS ;
 int ZEND_FETCH_OBJ_R ;
 int ZEND_FETCH_THIS ;
 int active_op_array ;
 int convert_to_string (int ) ;
 scalar_t__ is_this_fetch (TYPE_3__*) ;
 scalar_t__ this_guaranteed_exists () ;
 int zend_adjust_for_fetch_type (TYPE_2__*,TYPE_1__*,int ) ;
 int zend_alloc_cache_slots (int) ;
 int zend_compile_expr (TYPE_1__*,TYPE_3__*) ;
 TYPE_2__* zend_delayed_compile_var (TYPE_1__*,TYPE_3__*,int ,int ) ;
 TYPE_2__* zend_delayed_emit_op (TYPE_1__*,int ,TYPE_1__*,TYPE_1__*) ;
 int zend_emit_op (TYPE_1__*,int ,int *,int *) ;
 int zend_separate_if_call_and_write (TYPE_1__*,TYPE_3__*,int ) ;

__attribute__((used)) static zend_op *zend_delayed_compile_prop(znode *result, zend_ast *ast, uint32_t type)
{
 zend_ast *obj_ast = ast->child[0];
 zend_ast *prop_ast = ast->child[1];

 znode obj_node, prop_node;
 zend_op *opline;

 if (is_this_fetch(obj_ast)) {
  if (this_guaranteed_exists()) {
   obj_node.op_type = IS_UNUSED;
  } else {
   zend_emit_op(&obj_node, ZEND_FETCH_THIS, ((void*)0), ((void*)0));
  }
  CG(active_op_array)->fn_flags |= ZEND_ACC_USES_THIS;
 } else {
  opline = zend_delayed_compile_var(&obj_node, obj_ast, type, 0);
  zend_separate_if_call_and_write(&obj_node, obj_ast, type);
 }
 zend_compile_expr(&prop_node, prop_ast);

 opline = zend_delayed_emit_op(result, ZEND_FETCH_OBJ_R, &obj_node, &prop_node);
 if (opline->op2_type == IS_CONST) {
  convert_to_string(CT_CONSTANT(opline->op2));
  opline->extended_value = zend_alloc_cache_slots(3);
 }

 zend_adjust_for_fetch_type(opline, result, type);
 return opline;
}
