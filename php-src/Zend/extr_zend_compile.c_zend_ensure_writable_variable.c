
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ kind; } ;
typedef TYPE_1__ zend_ast ;


 int E_COMPILE_ERROR ;
 scalar_t__ ZEND_AST_CALL ;
 scalar_t__ ZEND_AST_METHOD_CALL ;
 scalar_t__ ZEND_AST_STATIC_CALL ;
 int zend_error_noreturn (int ,char*) ;

__attribute__((used)) static void zend_ensure_writable_variable(const zend_ast *ast)
{
 if (ast->kind == ZEND_AST_CALL) {
  zend_error_noreturn(E_COMPILE_ERROR, "Can't use function return value in write context");
 }
 if (ast->kind == ZEND_AST_METHOD_CALL || ast->kind == ZEND_AST_STATIC_CALL) {
  zend_error_noreturn(E_COMPILE_ERROR, "Can't use method return value in write context");
 }
}
