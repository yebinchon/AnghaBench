
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * head; } ;
typedef int ConditionalStackData ;
typedef TYPE_1__* ConditionalStack ;


 TYPE_1__* pg_malloc (int) ;

ConditionalStack
conditional_stack_create(void)
{
 ConditionalStack cstack = pg_malloc(sizeof(ConditionalStackData));

 cstack->head = ((void*)0);
 return cstack;
}
