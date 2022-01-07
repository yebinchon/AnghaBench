
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relname; } ;
typedef TYPE_1__ RangeVar ;
typedef int Oid ;


 int NOTICE ;
 int REINDEXOPT_REPORT_PROGRESS ;
 int REINDEX_REL_CHECK_CONSTRAINTS ;
 int REINDEX_REL_PROCESS_TOAST ;
 int RangeVarCallbackOwnsTable ;
 int RangeVarGetRelidExtended (TYPE_1__*,int ,int ,int ,int *) ;
 int ReindexRelationConcurrently (int ,int) ;
 int ShareLock ;
 int ShareUpdateExclusiveLock ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int reindex_relation (int ,int,int) ;

Oid
ReindexTable(RangeVar *relation, int options, bool concurrent)
{
 Oid heapOid;
 bool result;


 heapOid = RangeVarGetRelidExtended(relation,
            concurrent ? ShareUpdateExclusiveLock : ShareLock,
            0,
            RangeVarCallbackOwnsTable, ((void*)0));

 if (concurrent)
 {
  result = ReindexRelationConcurrently(heapOid, options);

  if (!result)
   ereport(NOTICE,
     (errmsg("table \"%s\" has no indexes that can be reindexed concurrently",
       relation->relname)));
 }
 else
 {
  result = reindex_relation(heapOid,
          REINDEX_REL_PROCESS_TOAST |
          REINDEX_REL_CHECK_CONSTRAINTS,
          options | REINDEXOPT_REPORT_PROGRESS);
  if (!result)
   ereport(NOTICE,
     (errmsg("table \"%s\" has no indexes to reindex",
       relation->relname)));
 }

 return heapOid;
}
