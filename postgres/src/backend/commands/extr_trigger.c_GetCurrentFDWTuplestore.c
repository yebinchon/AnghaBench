
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int Tuplestorestate ;
struct TYPE_4__ {size_t query_depth; TYPE_1__* query_stack; } ;
struct TYPE_3__ {int * fdw_tuplestore; } ;
typedef int ResourceOwner ;
typedef int MemoryContext ;


 int CurTransactionContext ;
 int CurTransactionResourceOwner ;
 int CurrentResourceOwner ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_2__ afterTriggers ;
 int * tuplestore_begin_heap (int,int,int ) ;
 int work_mem ;

__attribute__((used)) static Tuplestorestate *
GetCurrentFDWTuplestore(void)
{
 Tuplestorestate *ret;

 ret = afterTriggers.query_stack[afterTriggers.query_depth].fdw_tuplestore;
 if (ret == ((void*)0))
 {
  MemoryContext oldcxt;
  ResourceOwner saveResourceOwner;





  oldcxt = MemoryContextSwitchTo(CurTransactionContext);
  saveResourceOwner = CurrentResourceOwner;
  CurrentResourceOwner = CurTransactionResourceOwner;

  ret = tuplestore_begin_heap(0, 0, work_mem);

  CurrentResourceOwner = saveResourceOwner;
  MemoryContextSwitchTo(oldcxt);

  afterTriggers.query_stack[afterTriggers.query_depth].fdw_tuplestore = ret;
 }

 return ret;
}
