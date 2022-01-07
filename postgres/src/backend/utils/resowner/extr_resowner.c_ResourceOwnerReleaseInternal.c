
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int dsm_segment ;
typedef int TupleDesc ;
struct TYPE_8__ {int nlocks; int filearr; int snapshotarr; int tupdescarr; int planrefarr; int catlistrefarr; int catrefarr; int ** locks; int * parent; int jitarr; int dsmarr; int relrefarr; int bufferarr; struct TYPE_8__* nextchild; struct TYPE_8__* firstchild; } ;
struct TYPE_7__ {int arg; int (* callback ) (int ,int,int,int ) ;struct TYPE_7__* next; } ;
typedef int Snapshot ;
typedef int ResourceReleasePhase ;
typedef TYPE_1__ ResourceReleaseCallbackItem ;
typedef TYPE_2__* ResourceOwner ;
typedef int Relation ;
typedef int LOCALLOCK ;
typedef int JitContext ;
typedef int HeapTuple ;
typedef int File ;
typedef int Datum ;
typedef int CatCList ;
typedef int CachedPlan ;
typedef int Buffer ;


 int Assert (int ) ;
 TYPE_2__* CurrentResourceOwner ;
 int DatumGetBuffer (int ) ;
 int DatumGetFile (int ) ;
 scalar_t__ DatumGetPointer (int ) ;
 int DecrTupleDescRefCount (int ) ;
 int FileClose (int ) ;
 int LockReassignCurrentOwner (int **,int) ;
 int LockReleaseCurrentOwner (int **,int) ;
 int MAX_RESOWNER_LOCKS ;
 scalar_t__ PointerGetDatum (int ) ;
 int PrintBufferLeakWarning (int ) ;
 int PrintCatCacheLeakWarning (int ) ;
 int PrintCatCacheListLeakWarning (int *) ;
 int PrintDSMLeakWarning (int *) ;
 int PrintFileLeakWarning (int ) ;
 int PrintPlanCacheLeakWarning (int *) ;
 int PrintRelCacheLeakWarning (int ) ;
 int PrintSnapshotLeakWarning (int ) ;
 int PrintTupleDescLeakWarning (int ) ;
 int ProcReleaseLocks (int) ;
 int RESOURCE_RELEASE_AFTER_LOCKS ;
 int RESOURCE_RELEASE_BEFORE_LOCKS ;
 int RESOURCE_RELEASE_LOCKS ;
 int RelationClose (int ) ;
 int ReleaseBuffer (int ) ;
 int ReleaseCachedPlan (int *,int) ;
 int ReleaseCatCache (int ) ;
 int ReleaseCatCacheList (int *) ;
 int ReleasePredicateLocks (int,int) ;
 scalar_t__ ResourceArrayGetAny (int *,int *) ;
 TYPE_1__* ResourceRelease_callbacks ;
 TYPE_2__* TopTransactionResourceOwner ;
 int UnregisterSnapshot (int ) ;
 int dsm_detach (int *) ;
 int jit_release_context (int *) ;
 int stub1 (int ,int,int,int ) ;

__attribute__((used)) static void
ResourceOwnerReleaseInternal(ResourceOwner owner,
        ResourceReleasePhase phase,
        bool isCommit,
        bool isTopLevel)
{
 ResourceOwner child;
 ResourceOwner save;
 ResourceReleaseCallbackItem *item;
 Datum foundres;


 for (child = owner->firstchild; child != ((void*)0); child = child->nextchild)
  ResourceOwnerReleaseInternal(child, phase, isCommit, isTopLevel);





 save = CurrentResourceOwner;
 CurrentResourceOwner = owner;

 if (phase == RESOURCE_RELEASE_BEFORE_LOCKS)
 {
  while (ResourceArrayGetAny(&(owner->bufferarr), &foundres))
  {
   Buffer res = DatumGetBuffer(foundres);

   if (isCommit)
    PrintBufferLeakWarning(res);
   ReleaseBuffer(res);
  }


  while (ResourceArrayGetAny(&(owner->relrefarr), &foundres))
  {
   Relation res = (Relation) DatumGetPointer(foundres);

   if (isCommit)
    PrintRelCacheLeakWarning(res);
   RelationClose(res);
  }


  while (ResourceArrayGetAny(&(owner->dsmarr), &foundres))
  {
   dsm_segment *res = (dsm_segment *) DatumGetPointer(foundres);

   if (isCommit)
    PrintDSMLeakWarning(res);
   dsm_detach(res);
  }


  while (ResourceArrayGetAny(&(owner->jitarr), &foundres))
  {
   JitContext *context = (JitContext *) PointerGetDatum(foundres);

   jit_release_context(context);
  }
 }
 else if (phase == RESOURCE_RELEASE_LOCKS)
 {
  if (isTopLevel)
  {





   if (owner == TopTransactionResourceOwner)
   {
    ProcReleaseLocks(isCommit);
    ReleasePredicateLocks(isCommit, 0);
   }
  }
  else
  {





   LOCALLOCK **locks;
   int nlocks;

   Assert(owner->parent != ((void*)0));





   if (owner->nlocks > MAX_RESOWNER_LOCKS)
   {
    locks = ((void*)0);
    nlocks = 0;
   }
   else
   {
    locks = owner->locks;
    nlocks = owner->nlocks;
   }

   if (isCommit)
    LockReassignCurrentOwner(locks, nlocks);
   else
    LockReleaseCurrentOwner(locks, nlocks);
  }
 }
 else if (phase == RESOURCE_RELEASE_AFTER_LOCKS)
 {







  while (ResourceArrayGetAny(&(owner->catrefarr), &foundres))
  {
   HeapTuple res = (HeapTuple) DatumGetPointer(foundres);

   if (isCommit)
    PrintCatCacheLeakWarning(res);
   ReleaseCatCache(res);
  }


  while (ResourceArrayGetAny(&(owner->catlistrefarr), &foundres))
  {
   CatCList *res = (CatCList *) DatumGetPointer(foundres);

   if (isCommit)
    PrintCatCacheListLeakWarning(res);
   ReleaseCatCacheList(res);
  }


  while (ResourceArrayGetAny(&(owner->planrefarr), &foundres))
  {
   CachedPlan *res = (CachedPlan *) DatumGetPointer(foundres);

   if (isCommit)
    PrintPlanCacheLeakWarning(res);
   ReleaseCachedPlan(res, 1);
  }


  while (ResourceArrayGetAny(&(owner->tupdescarr), &foundres))
  {
   TupleDesc res = (TupleDesc) DatumGetPointer(foundres);

   if (isCommit)
    PrintTupleDescLeakWarning(res);
   DecrTupleDescRefCount(res);
  }


  while (ResourceArrayGetAny(&(owner->snapshotarr), &foundres))
  {
   Snapshot res = (Snapshot) DatumGetPointer(foundres);

   if (isCommit)
    PrintSnapshotLeakWarning(res);
   UnregisterSnapshot(res);
  }


  while (ResourceArrayGetAny(&(owner->filearr), &foundres))
  {
   File res = DatumGetFile(foundres);

   if (isCommit)
    PrintFileLeakWarning(res);
   FileClose(res);
  }
 }


 for (item = ResourceRelease_callbacks; item; item = item->next)
  item->callback(phase, isCommit, isTopLevel, item->arg);

 CurrentResourceOwner = save;
}
