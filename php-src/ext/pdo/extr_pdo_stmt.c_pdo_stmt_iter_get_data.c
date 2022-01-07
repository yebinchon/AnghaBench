
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int zend_object_iterator ;
struct php_pdo_iterator {int fetch_ahead; } ;


 scalar_t__ Z_ISUNDEF (int ) ;

__attribute__((used)) static zval *pdo_stmt_iter_get_data(zend_object_iterator *iter)
{
 struct php_pdo_iterator *I = (struct php_pdo_iterator*)iter;


 if (Z_ISUNDEF(I->fetch_ahead)) {
  return ((void*)0);
 }

 return &I->fetch_ahead;
}
