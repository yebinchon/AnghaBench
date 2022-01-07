
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* head; } ;
struct TYPE_5__ {int query_len; } ;
typedef TYPE_2__* ConditionalStack ;


 int Assert (int) ;
 int conditional_stack_empty (TYPE_2__*) ;

void
conditional_stack_set_query_len(ConditionalStack cstack, int len)
{
 Assert(!conditional_stack_empty(cstack));
 cstack->head->query_len = len;
}
