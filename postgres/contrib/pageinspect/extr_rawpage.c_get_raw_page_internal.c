
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int text ;
typedef int bytea ;
struct TYPE_10__ {TYPE_1__* rd_rel; } ;
struct TYPE_9__ {scalar_t__ relkind; } ;
typedef TYPE_2__* Relation ;
typedef int RangeVar ;
typedef int ForkNumber ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int AccessShareLock ;
 scalar_t__ BLCKSZ ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERRCODE_WRONG_OBJECT_TYPE ;
 int ERROR ;
 int LockBuffer (int ,int ) ;
 int RBM_NORMAL ;
 scalar_t__ RELATION_IS_OTHER_TEMP (TYPE_2__*) ;
 scalar_t__ RELKIND_COMPOSITE_TYPE ;
 scalar_t__ RELKIND_FOREIGN_TABLE ;
 scalar_t__ RELKIND_PARTITIONED_INDEX ;
 scalar_t__ RELKIND_PARTITIONED_TABLE ;
 scalar_t__ RELKIND_VIEW ;
 int ReadBufferExtended (TYPE_2__*,int ,scalar_t__,int ,int *) ;
 scalar_t__ RelationGetNumberOfBlocksInFork (TYPE_2__*,int ) ;
 int RelationGetRelationName (TYPE_2__*) ;
 int ReleaseBuffer (int ) ;
 int SET_VARSIZE (int *,scalar_t__) ;
 char* VARDATA (int *) ;
 scalar_t__ VARHDRSZ ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,...) ;
 int * makeRangeVarFromNameList (int ) ;
 int memcpy (char*,int ,scalar_t__) ;
 scalar_t__ palloc (scalar_t__) ;
 int relation_close (TYPE_2__*,int ) ;
 TYPE_2__* relation_openrv (int *,int ) ;
 int superuser () ;
 int textToQualifiedNameList (int *) ;

__attribute__((used)) static bytea *
get_raw_page_internal(text *relname, ForkNumber forknum, BlockNumber blkno)
{
 bytea *raw_page;
 RangeVar *relrv;
 Relation rel;
 char *raw_page_data;
 Buffer buf;

 if (!superuser())
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     (errmsg("must be superuser to use raw page functions"))));

 relrv = makeRangeVarFromNameList(textToQualifiedNameList(relname));
 rel = relation_openrv(relrv, AccessShareLock);


 if (rel->rd_rel->relkind == RELKIND_VIEW)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot get raw page from view \"%s\"",
      RelationGetRelationName(rel))));
 if (rel->rd_rel->relkind == RELKIND_COMPOSITE_TYPE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot get raw page from composite type \"%s\"",
      RelationGetRelationName(rel))));
 if (rel->rd_rel->relkind == RELKIND_FOREIGN_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot get raw page from foreign table \"%s\"",
      RelationGetRelationName(rel))));
 if (rel->rd_rel->relkind == RELKIND_PARTITIONED_TABLE)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot get raw page from partitioned table \"%s\"",
      RelationGetRelationName(rel))));
 if (rel->rd_rel->relkind == RELKIND_PARTITIONED_INDEX)
  ereport(ERROR,
    (errcode(ERRCODE_WRONG_OBJECT_TYPE),
     errmsg("cannot get raw page from partitioned index \"%s\"",
      RelationGetRelationName(rel))));






 if (RELATION_IS_OTHER_TEMP(rel))
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot access temporary tables of other sessions")));

 if (blkno >= RelationGetNumberOfBlocksInFork(rel, forknum))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("block number %u is out of range for relation \"%s\"",
      blkno, RelationGetRelationName(rel))));


 raw_page = (bytea *) palloc(BLCKSZ + VARHDRSZ);
 SET_VARSIZE(raw_page, BLCKSZ + VARHDRSZ);
 raw_page_data = VARDATA(raw_page);



 buf = ReadBufferExtended(rel, forknum, blkno, RBM_NORMAL, ((void*)0));
 LockBuffer(buf, BUFFER_LOCK_SHARE);

 memcpy(raw_page_data, BufferGetPage(buf), BLCKSZ);

 LockBuffer(buf, BUFFER_LOCK_UNLOCK);
 ReleaseBuffer(buf);

 relation_close(rel, AccessShareLock);

 return raw_page;
}
