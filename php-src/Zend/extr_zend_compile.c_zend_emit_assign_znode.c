
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode ;
typedef int zend_ast ;


 int ZEND_AST_ASSIGN ;
 int * zend_ast_create (int ,int *,int ) ;
 int zend_ast_create_znode (int *) ;
 int zend_compile_assign (int *,int *) ;
 int zend_do_free (int *) ;

__attribute__((used)) static inline void zend_emit_assign_znode(zend_ast *var_ast, znode *value_node)
{
 znode dummy_node;
 zend_ast *assign_ast = zend_ast_create(ZEND_AST_ASSIGN, var_ast,
  zend_ast_create_znode(value_node));
 zend_compile_assign(&dummy_node, assign_ast);
 zend_do_free(&dummy_node);
}
