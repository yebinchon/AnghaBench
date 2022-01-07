
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int maxquerydepth; int query_depth; TYPE_2__* query_stack; } ;
struct TYPE_5__ {int * tailfree; int * tail; int * head; } ;
struct TYPE_6__ {int tables; int * fdw_tuplestore; TYPE_1__ events; } ;
typedef TYPE_2__ AfterTriggersQueryData ;


 int Assert (int) ;
 int Max (int,int) ;
 scalar_t__ MemoryContextAlloc (int ,int) ;
 int NIL ;
 int TopTransactionContext ;
 TYPE_4__ afterTriggers ;
 scalar_t__ repalloc (TYPE_2__*,int) ;

__attribute__((used)) static void
AfterTriggerEnlargeQueryState(void)
{
 int init_depth = afterTriggers.maxquerydepth;

 Assert(afterTriggers.query_depth >= afterTriggers.maxquerydepth);

 if (afterTriggers.maxquerydepth == 0)
 {
  int new_alloc = Max(afterTriggers.query_depth + 1, 8);

  afterTriggers.query_stack = (AfterTriggersQueryData *)
   MemoryContextAlloc(TopTransactionContext,
          new_alloc * sizeof(AfterTriggersQueryData));
  afterTriggers.maxquerydepth = new_alloc;
 }
 else
 {

  int old_alloc = afterTriggers.maxquerydepth;
  int new_alloc = Max(afterTriggers.query_depth + 1,
         old_alloc * 2);

  afterTriggers.query_stack = (AfterTriggersQueryData *)
   repalloc(afterTriggers.query_stack,
      new_alloc * sizeof(AfterTriggersQueryData));
  afterTriggers.maxquerydepth = new_alloc;
 }


 while (init_depth < afterTriggers.maxquerydepth)
 {
  AfterTriggersQueryData *qs = &afterTriggers.query_stack[init_depth];

  qs->events.head = ((void*)0);
  qs->events.tail = ((void*)0);
  qs->events.tailfree = ((void*)0);
  qs->fdw_tuplestore = ((void*)0);
  qs->tables = NIL;

  ++init_depth;
 }
}
