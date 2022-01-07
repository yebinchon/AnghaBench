
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int znode ;
struct TYPE_4__ {struct TYPE_4__** child; } ;
typedef TYPE_1__ zend_ast ;


 int ZEND_CLONE ;
 int zend_compile_expr (int *,TYPE_1__*) ;
 int zend_emit_op_tmp (int *,int ,int *,int *) ;

void zend_compile_clone(znode *result, zend_ast *ast)
{
 zend_ast *obj_ast = ast->child[0];

 znode obj_node;
 zend_compile_expr(&obj_node, obj_ast);

 zend_emit_op_tmp(result, ZEND_CLONE, &obj_node, ((void*)0));
}
