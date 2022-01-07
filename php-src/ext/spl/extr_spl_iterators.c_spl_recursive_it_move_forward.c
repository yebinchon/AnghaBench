
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int data; } ;
typedef TYPE_1__ zend_object_iterator ;


 int Z_SPLRECURSIVE_IT_P (int *) ;
 int spl_recursive_it_move_forward_ex (int ,int *) ;

__attribute__((used)) static void spl_recursive_it_move_forward(zend_object_iterator *iter)
{
 spl_recursive_it_move_forward_ex(Z_SPLRECURSIVE_IT_P(&iter->data), &iter->data);
}
