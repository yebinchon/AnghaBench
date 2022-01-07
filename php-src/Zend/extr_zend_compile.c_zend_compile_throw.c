
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int znode ;
struct TYPE_4__ {struct TYPE_4__** child; } ;
typedef TYPE_1__ zend_ast ;


 int ZEND_THROW ;
 int zend_compile_expr (int *,TYPE_1__*) ;
 int zend_emit_op (int *,int ,int *,int *) ;

void zend_compile_throw(zend_ast *ast)
{
 zend_ast *expr_ast = ast->child[0];

 znode expr_node;
 zend_compile_expr(&expr_node, expr_ast);

 zend_emit_op(((void*)0), ZEND_THROW, &expr_node, ((void*)0));
}
