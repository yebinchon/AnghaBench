
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_object_iterator ;
struct php_pdo_iterator {int fetch_ahead; } ;


 int FAILURE ;
 int SUCCESS ;
 scalar_t__ Z_ISUNDEF (int ) ;

__attribute__((used)) static int pdo_stmt_iter_valid(zend_object_iterator *iter)
{
 struct php_pdo_iterator *I = (struct php_pdo_iterator*)iter;

 return Z_ISUNDEF(I->fetch_ahead) ? FAILURE : SUCCESS;
}
