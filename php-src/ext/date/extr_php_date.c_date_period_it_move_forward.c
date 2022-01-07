
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zend_object_iterator ;
struct TYPE_2__ {int current_index; } ;
typedef TYPE_1__ date_period_it ;


 int date_period_it_invalidate_current (int *) ;

__attribute__((used)) static void date_period_it_move_forward(zend_object_iterator *iter)
{
 date_period_it *iterator = (date_period_it *)iter;

 iterator->current_index++;
 date_period_it_invalidate_current(iter);
}
