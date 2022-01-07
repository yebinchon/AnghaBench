
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int zval ;
struct TYPE_5__ {struct TYPE_5__** child; } ;
typedef TYPE_1__ zend_ast ;


 int ZEND_BIND_REF ;
 int ZVAL_NULL (int *) ;
 int zend_ast_get_str (TYPE_1__*) ;
 int zend_compile_static_var_common (int ,int *,int ) ;
 int zend_const_expr_to_zval (int *,TYPE_1__*) ;

void zend_compile_static_var(zend_ast *ast)
{
 zend_ast *var_ast = ast->child[0];
 zend_ast *value_ast = ast->child[1];
 zval value_zv;

 if (value_ast) {
  zend_const_expr_to_zval(&value_zv, value_ast);
 } else {
  ZVAL_NULL(&value_zv);
 }

 zend_compile_static_var_common(zend_ast_get_str(var_ast), &value_zv, ZEND_BIND_REF);
}
