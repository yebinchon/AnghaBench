
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int zend_string ;
typedef int zend_bool ;
struct TYPE_6__ {scalar_t__ kind; struct TYPE_6__** child; } ;
typedef TYPE_1__ zend_ast ;


 scalar_t__ ZEND_AST_VAR ;
 scalar_t__ ZEND_AST_ZVAL ;
 int zend_ast_get_zval (TYPE_1__*) ;
 scalar_t__ zend_is_variable (TYPE_1__*) ;
 int zend_string_equals (int *,int *) ;
 int zend_string_release_ex (int *,int ) ;
 int * zval_get_string (int ) ;

zend_bool zend_is_assign_to_self(zend_ast *var_ast, zend_ast *expr_ast)
{
 if (expr_ast->kind != ZEND_AST_VAR || expr_ast->child[0]->kind != ZEND_AST_ZVAL) {
  return 0;
 }

 while (zend_is_variable(var_ast) && var_ast->kind != ZEND_AST_VAR) {
  var_ast = var_ast->child[0];
 }

 if (var_ast->kind != ZEND_AST_VAR || var_ast->child[0]->kind != ZEND_AST_ZVAL) {
  return 0;
 }

 {
  zend_string *name1 = zval_get_string(zend_ast_get_zval(var_ast->child[0]));
  zend_string *name2 = zval_get_string(zend_ast_get_zval(expr_ast->child[0]));
  zend_bool result = zend_string_equals(name1, name2);
  zend_string_release_ex(name1, 0);
  zend_string_release_ex(name2, 0);
  return result;
 }
}
