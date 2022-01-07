
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * head; } ;
typedef TYPE_1__* ConditionalStack ;



bool
conditional_stack_empty(ConditionalStack cstack)
{
 return cstack->head == ((void*)0);
}
