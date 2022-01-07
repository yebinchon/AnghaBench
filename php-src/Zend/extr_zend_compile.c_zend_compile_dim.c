
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int znode ;
typedef int zend_op ;
typedef int zend_ast ;
typedef int uint32_t ;


 int zend_delayed_compile_begin () ;
 int zend_delayed_compile_dim (int *,int *,int ) ;
 int * zend_delayed_compile_end (int ) ;

__attribute__((used)) static zend_op *zend_compile_dim(znode *result, zend_ast *ast, uint32_t type)
{
 uint32_t offset = zend_delayed_compile_begin();
 zend_delayed_compile_dim(result, ast, type);
 return zend_delayed_compile_end(offset);
}
