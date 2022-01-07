
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int tempCxt; } ;
struct TYPE_11__ {void* ii_AmCache; int ii_Context; } ;
struct TYPE_10__ {int t_tid; } ;
typedef int Relation ;
typedef int MemoryContext ;
typedef int * ItemPointer ;
typedef int IndexUniqueCheck ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__ IndexInfo ;
typedef TYPE_3__ GISTSTATE ;
typedef int Datum ;


 int MemoryContextReset (int ) ;
 int MemoryContextSwitchTo (int ) ;
 int createTempGistContext () ;
 TYPE_1__* gistFormTuple (TYPE_3__*,int ,int *,int*,int) ;
 int gistdoinsert (int ,TYPE_1__*,int ,TYPE_3__*,int ,int) ;
 TYPE_3__* initGISTstate (int ) ;

bool
gistinsert(Relation r, Datum *values, bool *isnull,
     ItemPointer ht_ctid, Relation heapRel,
     IndexUniqueCheck checkUnique,
     IndexInfo *indexInfo)
{
 GISTSTATE *giststate = (GISTSTATE *) indexInfo->ii_AmCache;
 IndexTuple itup;
 MemoryContext oldCxt;


 if (giststate == ((void*)0))
 {
  oldCxt = MemoryContextSwitchTo(indexInfo->ii_Context);
  giststate = initGISTstate(r);
  giststate->tempCxt = createTempGistContext();
  indexInfo->ii_AmCache = (void *) giststate;
  MemoryContextSwitchTo(oldCxt);
 }

 oldCxt = MemoryContextSwitchTo(giststate->tempCxt);

 itup = gistFormTuple(giststate, r,
       values, isnull, 1 );
 itup->t_tid = *ht_ctid;

 gistdoinsert(r, itup, 0, giststate, heapRel, 0);


 MemoryContextSwitchTo(oldCxt);
 MemoryContextReset(giststate->tempCxt);

 return 0;
}
