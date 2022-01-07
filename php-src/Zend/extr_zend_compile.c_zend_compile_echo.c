
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int znode ;
struct TYPE_6__ {scalar_t__ extended_value; } ;
typedef TYPE_1__ zend_op ;
struct TYPE_7__ {struct TYPE_7__** child; } ;
typedef TYPE_2__ zend_ast ;


 int ZEND_ECHO ;
 int zend_compile_expr (int *,TYPE_2__*) ;
 TYPE_1__* zend_emit_op (int *,int ,int *,int *) ;

void zend_compile_echo(zend_ast *ast)
{
 zend_op *opline;
 zend_ast *expr_ast = ast->child[0];

 znode expr_node;
 zend_compile_expr(&expr_node, expr_ast);

 opline = zend_emit_op(((void*)0), ZEND_ECHO, &expr_node, ((void*)0));
 opline->extended_value = 0;
}
