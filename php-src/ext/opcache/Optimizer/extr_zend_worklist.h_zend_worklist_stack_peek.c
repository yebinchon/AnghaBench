
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int* buf; } ;
typedef TYPE_1__ zend_worklist_stack ;


 int ZEND_ASSERT (int) ;

__attribute__((used)) static inline int zend_worklist_stack_peek(zend_worklist_stack *stack)
{
 ZEND_ASSERT(stack->len);
 return stack->buf[stack->len - 1];
}
