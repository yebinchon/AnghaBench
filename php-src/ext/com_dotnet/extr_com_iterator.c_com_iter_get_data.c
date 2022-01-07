
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int zval ;
struct TYPE_3__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct php_com_iterator {int zdata; } ;


 scalar_t__ Z_PTR (int ) ;

__attribute__((used)) static zval* com_iter_get_data(zend_object_iterator *iter)
{
 struct php_com_iterator *I = (struct php_com_iterator*)Z_PTR(iter->data);

 return &I->zdata;
}
