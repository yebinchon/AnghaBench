
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ zend_bool ;
struct TYPE_4__ {scalar_t__ kind; scalar_t__ attr; } ;
typedef TYPE_1__ zend_ast ;


 int E_COMPILE_ERROR ;
 scalar_t__ ZEND_ARRAY_SYNTAX_LONG ;
 scalar_t__ ZEND_AST_ARRAY ;
 int zend_can_write_to_variable (TYPE_1__*) ;
 int zend_error_noreturn (int ,char*) ;

__attribute__((used)) static void zend_verify_list_assign_target(zend_ast *var_ast, zend_bool old_style) {
 if (var_ast->kind == ZEND_AST_ARRAY) {
  if (var_ast->attr == ZEND_ARRAY_SYNTAX_LONG) {
   zend_error_noreturn(E_COMPILE_ERROR, "Cannot assign to array(), use [] instead");
  }
  if (old_style != var_ast->attr) {
   zend_error_noreturn(E_COMPILE_ERROR, "Cannot mix [] and list()");
  }
 } else if (!zend_can_write_to_variable(var_ast)) {
  zend_error_noreturn(E_COMPILE_ERROR, "Assignments can only happen to writable values");
 }
}
