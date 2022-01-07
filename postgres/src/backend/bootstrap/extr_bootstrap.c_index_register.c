
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * ii_ExclusionStrats; int * ii_ExclusionProcs; int * ii_ExclusionOps; int * ii_PredicateState; void* ii_Predicate; int ii_ExpressionsState; void* ii_Expressions; } ;
struct TYPE_7__ {struct TYPE_7__* il_next; TYPE_2__* il_info; void* il_ind; void* il_heap; } ;
typedef void* Oid ;
typedef int * MemoryContext ;
typedef TYPE_1__ IndexList ;
typedef TYPE_2__ IndexInfo ;


 int ALLOCSET_DEFAULT_SIZES ;
 int * AllocSetContextCreate (int *,char*,int ) ;
 int Assert (int ) ;
 TYPE_1__* ILHead ;
 int * MemoryContextSwitchTo (int *) ;
 int NIL ;
 void* copyObject (void*) ;
 int memcpy (TYPE_2__*,TYPE_2__*,int) ;
 int * nogc ;
 scalar_t__ palloc (int) ;

void
index_register(Oid heap,
      Oid ind,
      IndexInfo *indexInfo)
{
 IndexList *newind;
 MemoryContext oldcxt;







 if (nogc == ((void*)0))
  nogc = AllocSetContextCreate(((void*)0),
          "BootstrapNoGC",
          ALLOCSET_DEFAULT_SIZES);

 oldcxt = MemoryContextSwitchTo(nogc);

 newind = (IndexList *) palloc(sizeof(IndexList));
 newind->il_heap = heap;
 newind->il_ind = ind;
 newind->il_info = (IndexInfo *) palloc(sizeof(IndexInfo));

 memcpy(newind->il_info, indexInfo, sizeof(IndexInfo));

 newind->il_info->ii_Expressions =
  copyObject(indexInfo->ii_Expressions);
 newind->il_info->ii_ExpressionsState = NIL;

 newind->il_info->ii_Predicate =
  copyObject(indexInfo->ii_Predicate);
 newind->il_info->ii_PredicateState = ((void*)0);

 Assert(indexInfo->ii_ExclusionOps == ((void*)0));
 Assert(indexInfo->ii_ExclusionProcs == ((void*)0));
 Assert(indexInfo->ii_ExclusionStrats == ((void*)0));

 newind->il_next = ILHead;
 ILHead = newind;

 MemoryContextSwitchTo(oldcxt);
}
