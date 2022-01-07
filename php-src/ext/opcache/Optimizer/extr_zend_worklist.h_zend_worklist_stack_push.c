
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; scalar_t__ capacity; int* buf; } ;
typedef TYPE_1__ zend_worklist_stack ;


 int ZEND_ASSERT (int) ;

__attribute__((used)) static inline void zend_worklist_stack_push(zend_worklist_stack *stack, int i)
{
 ZEND_ASSERT(stack->len < stack->capacity);
 stack->buf[stack->len++] = i;
}
