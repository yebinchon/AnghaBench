
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode ;
typedef int zend_ast ;


 int ZEND_AST_ASSIGN_REF ;
 int * zend_ast_create (int ,int *,int ) ;
 int zend_ast_create_znode (int *) ;
 int zend_compile_assign_ref (int *,int *) ;

__attribute__((used)) static inline void zend_emit_assign_ref_znode(zend_ast *var_ast, znode *value_node)
{
 zend_ast *assign_ast = zend_ast_create(ZEND_AST_ASSIGN_REF, var_ast,
  zend_ast_create_znode(value_node));
 zend_compile_assign_ref(((void*)0), assign_ast);
}
