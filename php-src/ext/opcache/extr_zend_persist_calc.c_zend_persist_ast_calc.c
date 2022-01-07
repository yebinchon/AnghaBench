
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int val; } ;
typedef TYPE_1__ zend_ast_zval ;
struct TYPE_10__ {int children; TYPE_3__** child; } ;
typedef TYPE_2__ zend_ast_list ;
struct TYPE_11__ {scalar_t__ kind; struct TYPE_11__** child; } ;
typedef TYPE_3__ zend_ast ;
typedef size_t uint32_t ;


 int ADD_SIZE (int) ;
 scalar_t__ ZEND_AST_CONSTANT ;
 scalar_t__ ZEND_AST_ZVAL ;
 TYPE_2__* zend_ast_get_list (TYPE_3__*) ;
 size_t zend_ast_get_num_children (TYPE_3__*) ;
 scalar_t__ zend_ast_is_list (TYPE_3__*) ;
 int zend_persist_zval_calc (int *) ;

__attribute__((used)) static void zend_persist_ast_calc(zend_ast *ast)
{
 uint32_t i;

 if (ast->kind == ZEND_AST_ZVAL || ast->kind == ZEND_AST_CONSTANT) {
  ADD_SIZE(sizeof(zend_ast_zval));
  zend_persist_zval_calc(&((zend_ast_zval*)(ast))->val);
 } else if (zend_ast_is_list(ast)) {
  zend_ast_list *list = zend_ast_get_list(ast);
  ADD_SIZE(sizeof(zend_ast_list) - sizeof(zend_ast *) + sizeof(zend_ast *) * list->children);
  for (i = 0; i < list->children; i++) {
   if (list->child[i]) {
    zend_persist_ast_calc(list->child[i]);
   }
  }
 } else {
  uint32_t children = zend_ast_get_num_children(ast);
  ADD_SIZE(sizeof(zend_ast) - sizeof(zend_ast *) + sizeof(zend_ast *) * children);
  for (i = 0; i < children; i++) {
   if (ast->child[i]) {
    zend_persist_ast_calc(ast->child[i]);
   }
  }
 }
}
