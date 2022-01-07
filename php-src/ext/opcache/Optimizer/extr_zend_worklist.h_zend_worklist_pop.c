
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stack; } ;
typedef TYPE_1__ zend_worklist ;


 int zend_worklist_stack_pop (int *) ;

__attribute__((used)) static inline int zend_worklist_pop(zend_worklist *worklist)
{

 return zend_worklist_stack_pop(&worklist->stack);
}
