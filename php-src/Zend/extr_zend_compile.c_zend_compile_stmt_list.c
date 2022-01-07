
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t children; int * child; } ;
typedef TYPE_1__ zend_ast_list ;
typedef int zend_ast ;
typedef size_t uint32_t ;


 TYPE_1__* zend_ast_get_list (int *) ;
 int zend_compile_stmt (int ) ;

void zend_compile_stmt_list(zend_ast *ast)
{
 zend_ast_list *list = zend_ast_get_list(ast);
 uint32_t i;
 for (i = 0; i < list->children; ++i) {
  zend_compile_stmt(list->child[i]);
 }
}
