
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int constant; } ;
struct TYPE_9__ {TYPE_1__ u; int op_type; } ;
typedef TYPE_2__ znode ;
struct TYPE_10__ {size_t children; int ** child; } ;
typedef TYPE_3__ zend_ast_list ;
typedef int zend_ast ;
typedef size_t uint32_t ;


 int IS_CONST ;
 int ZVAL_TRUE (int *) ;
 TYPE_3__* zend_ast_get_list (int *) ;
 int zend_compile_expr (TYPE_2__*,int *) ;
 int zend_do_free (TYPE_2__*) ;

void zend_compile_expr_list(znode *result, zend_ast *ast)
{
 zend_ast_list *list;
 uint32_t i;

 result->op_type = IS_CONST;
 ZVAL_TRUE(&result->u.constant);

 if (!ast) {
  return;
 }

 list = zend_ast_get_list(ast);
 for (i = 0; i < list->children; ++i) {
  zend_ast *expr_ast = list->child[i];

  zend_do_free(result);
  zend_compile_expr(result, expr_ast);
 }
}
