
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int relpersistence; } ;
struct TYPE_16__ {TYPE_1__ pgc; } ;
struct TYPE_15__ {int relNode; int dbNode; } ;
struct TYPE_12__ {int relId; int dbId; } ;
struct TYPE_13__ {TYPE_2__ lockRelId; } ;
struct TYPE_14__ {int * rd_smgr; TYPE_3__ rd_lockInfo; TYPE_1__* rd_rel; int rd_backend; TYPE_5__ rd_node; } ;
typedef TYPE_4__* Relation ;
typedef TYPE_5__ RelFileNode ;
typedef int FakeRelCacheEntryData ;
typedef TYPE_6__* FakeRelCacheEntry ;


 int Assert (int ) ;
 int InRecovery ;
 int InvalidBackendId ;
 int RELPERSISTENCE_PERMANENT ;
 int RelationGetRelationName (TYPE_4__*) ;
 TYPE_6__* palloc0 (int) ;
 int sprintf (int ,char*,int) ;

Relation
CreateFakeRelcacheEntry(RelFileNode rnode)
{
 FakeRelCacheEntry fakeentry;
 Relation rel;

 Assert(InRecovery);


 fakeentry = palloc0(sizeof(FakeRelCacheEntryData));
 rel = (Relation) fakeentry;

 rel->rd_rel = &fakeentry->pgc;
 rel->rd_node = rnode;

 rel->rd_backend = InvalidBackendId;


 rel->rd_rel->relpersistence = RELPERSISTENCE_PERMANENT;


 sprintf(RelationGetRelationName(rel), "%u", rnode.relNode);
 rel->rd_lockInfo.lockRelId.dbId = rnode.dbNode;
 rel->rd_lockInfo.lockRelId.relId = rnode.relNode;

 rel->rd_smgr = ((void*)0);

 return rel;
}
