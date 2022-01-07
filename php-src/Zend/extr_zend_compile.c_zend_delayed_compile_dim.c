
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


struct TYPE_22__ {scalar_t__ op_type; } ;
typedef TYPE_1__ znode ;
struct TYPE_23__ {scalar_t__ opcode; int extended_value; } ;
typedef TYPE_2__ zend_op ;
struct TYPE_24__ {scalar_t__ attr; struct TYPE_24__** child; } ;
typedef TYPE_3__ zend_ast ;
typedef int uint32_t ;


 int BP_VAR_IS ;
 int BP_VAR_R ;
 int BP_VAR_UNSET ;
 int BP_VAR_W ;
 int E_COMPILE_ERROR ;
 int E_DEPRECATED ;
 scalar_t__ IS_CONST ;
 scalar_t__ IS_UNUSED ;
 scalar_t__ ZEND_DIM_ALTERNATIVE_SYNTAX ;
 int ZEND_FETCH_DIM_R ;
 int ZEND_FETCH_DIM_WRITE ;
 scalar_t__ ZEND_FETCH_OBJ_W ;
 scalar_t__ ZEND_FETCH_STATIC_PROP_W ;
 int zend_adjust_for_fetch_type (TYPE_2__*,TYPE_1__*,int ) ;
 int zend_compile_expr (TYPE_1__*,TYPE_3__*) ;
 TYPE_2__* zend_delayed_compile_var (TYPE_1__*,TYPE_3__*,int ,int ) ;
 TYPE_2__* zend_delayed_emit_op (TYPE_1__*,int ,TYPE_1__*,TYPE_1__*) ;
 int zend_error (int ,char*) ;
 int zend_error_noreturn (int ,char*) ;
 int zend_handle_numeric_dim (TYPE_2__*,TYPE_1__*) ;
 int zend_separate_if_call_and_write (TYPE_1__*,TYPE_3__*,int ) ;

__attribute__((used)) static zend_op *zend_delayed_compile_dim(znode *result, zend_ast *ast, uint32_t type)
{
 if (ast->attr == ZEND_DIM_ALTERNATIVE_SYNTAX) {
  zend_error(E_DEPRECATED, "Array and string offset access syntax with curly braces is deprecated");
 }

 zend_ast *var_ast = ast->child[0];
 zend_ast *dim_ast = ast->child[1];
 zend_op *opline;

 znode var_node, dim_node;

 opline = zend_delayed_compile_var(&var_node, var_ast, type, 0);
 if (opline && type == BP_VAR_W && (opline->opcode == ZEND_FETCH_STATIC_PROP_W || opline->opcode == ZEND_FETCH_OBJ_W)) {
  opline->extended_value |= ZEND_FETCH_DIM_WRITE;
 }

 zend_separate_if_call_and_write(&var_node, var_ast, type);

 if (dim_ast == ((void*)0)) {
  if (type == BP_VAR_R || type == BP_VAR_IS) {
   zend_error_noreturn(E_COMPILE_ERROR, "Cannot use [] for reading");
  }
  if (type == BP_VAR_UNSET) {
   zend_error_noreturn(E_COMPILE_ERROR, "Cannot use [] for unsetting");
  }
  dim_node.op_type = IS_UNUSED;
 } else {
  zend_compile_expr(&dim_node, dim_ast);
 }

 opline = zend_delayed_emit_op(result, ZEND_FETCH_DIM_R, &var_node, &dim_node);
 zend_adjust_for_fetch_type(opline, result, type);

 if (dim_node.op_type == IS_CONST) {
  zend_handle_numeric_dim(opline, &dim_node);
 }
 return opline;
}
