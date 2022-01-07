
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* buf; int capacity; scalar_t__ len; } ;
typedef TYPE_1__ zend_worklist_stack ;
typedef int zend_arena ;


 int SUCCESS ;
 int ZEND_ASSERT (int) ;
 scalar_t__ zend_arena_calloc (int **,int,int) ;

__attribute__((used)) static inline int zend_worklist_stack_prepare(zend_arena **arena, zend_worklist_stack *stack, int len)
{
 ZEND_ASSERT(len >= 0);

 stack->buf = (int*)zend_arena_calloc(arena, sizeof(*stack->buf), len);
 stack->len = 0;
 stack->capacity = len;

 return SUCCESS;
}
