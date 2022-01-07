
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;


 int Z_SPLRECURSIVE_IT_P (int *) ;
 int spl_recursive_it_valid_ex (int ,int *) ;

__attribute__((used)) static int spl_recursive_it_valid(zend_object_iterator *iter)
{
 return spl_recursive_it_valid_ex(Z_SPLRECURSIVE_IT_P(&iter->data), &iter->data);
}
