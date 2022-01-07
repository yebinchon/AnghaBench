
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int znode ;
struct TYPE_5__ {int extended_value; } ;
typedef TYPE_1__ zend_op ;
typedef int zend_ast ;
typedef int uint32_t ;


 int ZEND_FETCH_REF ;
 int zend_delayed_compile_begin () ;
 TYPE_1__* zend_delayed_compile_end (int ) ;
 TYPE_1__* zend_delayed_compile_prop (int *,int *,int ) ;

__attribute__((used)) static zend_op *zend_compile_prop(znode *result, zend_ast *ast, uint32_t type, int by_ref)
{
 uint32_t offset = zend_delayed_compile_begin();
 zend_op *opline = zend_delayed_compile_prop(result, ast, type);
 if (by_ref) {
  opline->extended_value |= ZEND_FETCH_REF;
 }
 return zend_delayed_compile_end(offset);
}
