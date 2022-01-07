
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int capacity; } ;
struct TYPE_4__ {TYPE_2__ stack; int visited; } ;
typedef TYPE_1__ zend_worklist ;


 int ZEND_ASSERT (int) ;
 scalar_t__ zend_bitset_in (int ,int) ;
 int zend_bitset_incl (int ,int) ;
 int zend_worklist_stack_push (TYPE_2__*,int) ;

__attribute__((used)) static inline int zend_worklist_push(zend_worklist *worklist, int i)
{
 ZEND_ASSERT(i >= 0 && i < worklist->stack.capacity);

 if (zend_bitset_in(worklist->visited, i)) {
  return 0;
 }

 zend_bitset_incl(worklist->visited, i);
 zend_worklist_stack_push(&worklist->stack, i);
 return 1;
}
