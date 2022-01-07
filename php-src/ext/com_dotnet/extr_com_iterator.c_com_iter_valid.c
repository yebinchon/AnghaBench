
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;
struct php_com_iterator {int zdata; } ;


 int FAILURE ;
 scalar_t__ IS_UNDEF ;
 int SUCCESS ;
 scalar_t__ Z_PTR (int ) ;
 scalar_t__ Z_TYPE (int ) ;

__attribute__((used)) static int com_iter_valid(zend_object_iterator *iter)
{
 struct php_com_iterator *I = (struct php_com_iterator*)Z_PTR(iter->data);

 if (Z_TYPE(I->zdata) != IS_UNDEF) {
  return SUCCESS;
 }

 return FAILURE;
}
