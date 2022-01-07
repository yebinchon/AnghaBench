
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {TYPE_2__* rd_index; int rd_indextuple; TYPE_1__* rd_indam; } ;
struct TYPE_10__ {scalar_t__ indrelid; int indisvalid; } ;
struct TYPE_9__ {int amclusterable; } ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef int LOCKMODE ;


 int Anum_pg_index_indpred ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int NoLock ;
 int RelationGetRelationName (TYPE_3__*) ;
 scalar_t__ RelationGetRelid (TYPE_3__*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int heap_attisnull (int ,int ,int *) ;
 int index_close (TYPE_3__*,int ) ;
 TYPE_3__* index_open (int ,int ) ;

void
check_index_is_clusterable(Relation OldHeap, Oid indexOid, bool recheck, LOCKMODE lockmode)
{
 Relation OldIndex;

 OldIndex = index_open(indexOid, lockmode);




 if (OldIndex->rd_index == ((void*)0) ||
  OldIndex->rd_index->indrelid != RelationGetRelid(OldHeap))
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("\"%s\" is not an index for table \"%s\"",
      RelationGetRelationName(OldIndex),
      RelationGetRelationName(OldHeap))));


 if (!OldIndex->rd_indam->amclusterable)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot cluster on index \"%s\" because access method does not support clustering",
      RelationGetRelationName(OldIndex))));







 if (!heap_attisnull(OldIndex->rd_indextuple, Anum_pg_index_indpred, ((void*)0)))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot cluster on partial index \"%s\"",
      RelationGetRelationName(OldIndex))));
 if (!OldIndex->rd_index->indisvalid)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot cluster on invalid index \"%s\"",
      RelationGetRelationName(OldIndex))));


 index_close(OldIndex, NoLock);
}
