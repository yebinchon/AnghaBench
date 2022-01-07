
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {size_t children; TYPE_2__** child; } ;
typedef TYPE_1__ zend_ast_list ;
struct TYPE_7__ {scalar_t__ kind; } ;
typedef TYPE_2__ zend_ast ;
typedef size_t uint32_t ;


 int CG (TYPE_2__*) ;
 int FAILURE ;
 int SUCCESS ;
 scalar_t__ ZEND_AST_DECLARE ;
 TYPE_1__* zend_ast_get_list (int ) ;

__attribute__((used)) static int zend_declare_is_first_statement(zend_ast *ast)
{
 uint32_t i = 0;
 zend_ast_list *file_ast = zend_ast_get_list(CG(ast));


 while (i < file_ast->children) {
  if (file_ast->child[i] == ast) {
   return SUCCESS;
  } else if (file_ast->child[i] == ((void*)0)) {

   return FAILURE;
  } else if (file_ast->child[i]->kind != ZEND_AST_DECLARE) {

   return FAILURE;
  }
  i++;
 }
 return FAILURE;
}
