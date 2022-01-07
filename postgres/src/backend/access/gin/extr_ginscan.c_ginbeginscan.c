
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ginstate; void* keyCtx; void* tempCtx; scalar_t__ nkeys; int * keys; } ;
struct TYPE_5__ {TYPE_2__* opaque; int indexRelation; } ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef int GinScanOpaqueData ;
typedef TYPE_2__* GinScanOpaque ;


 int ALLOCSET_DEFAULT_SIZES ;
 void* AllocSetContextCreate (int ,char*,int ) ;
 int Assert (int) ;
 int CurrentMemoryContext ;
 TYPE_1__* RelationGetIndexScan (int ,int,int) ;
 int initGinState (int *,int ) ;
 scalar_t__ palloc (int) ;

IndexScanDesc
ginbeginscan(Relation rel, int nkeys, int norderbys)
{
 IndexScanDesc scan;
 GinScanOpaque so;


 Assert(norderbys == 0);

 scan = RelationGetIndexScan(rel, nkeys, norderbys);


 so = (GinScanOpaque) palloc(sizeof(GinScanOpaqueData));
 so->keys = ((void*)0);
 so->nkeys = 0;
 so->tempCtx = AllocSetContextCreate(CurrentMemoryContext,
          "Gin scan temporary context",
          ALLOCSET_DEFAULT_SIZES);
 so->keyCtx = AllocSetContextCreate(CurrentMemoryContext,
            "Gin scan key context",
            ALLOCSET_DEFAULT_SIZES);
 initGinState(&so->ginstate, scan->indexRelation);

 scan->opaque = so;

 return scan;
}
