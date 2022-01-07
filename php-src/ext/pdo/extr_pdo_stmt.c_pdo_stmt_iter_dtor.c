
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {int data; } ;
struct php_pdo_iterator {int fetch_ahead; TYPE_1__ iter; } ;


 int Z_ISUNDEF (int ) ;
 int zval_ptr_dtor (int *) ;

__attribute__((used)) static void pdo_stmt_iter_dtor(zend_object_iterator *iter)
{
 struct php_pdo_iterator *I = (struct php_pdo_iterator*)iter;

 zval_ptr_dtor(&I->iter.data);

 if (!Z_ISUNDEF(I->fetch_ahead)) {
  zval_ptr_dtor(&I->fetch_ahead);
 }
}
