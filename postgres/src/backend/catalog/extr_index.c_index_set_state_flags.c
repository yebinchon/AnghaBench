
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int indislive; int indisready; int indisvalid; int indisclustered; } ;
typedef int Relation ;
typedef int Oid ;
typedef int IndexStateFlagsAction ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_index ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GetTopTransactionIdIfAny () ;
 int HeapTupleIsValid (int ) ;
 int INDEXRELID ;




 int IndexRelationId ;
 scalar_t__ InvalidTransactionId ;
 int ObjectIdGetDatum (int ) ;
 int RowExclusiveLock ;
 int SearchSysCacheCopy1 (int ,int ) ;
 int elog (int ,char*,int ) ;
 int heap_inplace_update (int ,int ) ;
 int table_close (int ,int ) ;
 int table_open (int ,int ) ;

void
index_set_state_flags(Oid indexId, IndexStateFlagsAction action)
{
 Relation pg_index;
 HeapTuple indexTuple;
 Form_pg_index indexForm;


 Assert(GetTopTransactionIdIfAny() == InvalidTransactionId);


 pg_index = table_open(IndexRelationId, RowExclusiveLock);

 indexTuple = SearchSysCacheCopy1(INDEXRELID,
          ObjectIdGetDatum(indexId));
 if (!HeapTupleIsValid(indexTuple))
  elog(ERROR, "cache lookup failed for index %u", indexId);
 indexForm = (Form_pg_index) GETSTRUCT(indexTuple);


 switch (action)
 {
  case 131:

   Assert(indexForm->indislive);
   Assert(!indexForm->indisready);
   Assert(!indexForm->indisvalid);
   indexForm->indisready = 1;
   break;
  case 130:

   Assert(indexForm->indislive);
   Assert(indexForm->indisready);
   Assert(!indexForm->indisvalid);
   indexForm->indisvalid = 1;
   break;
  case 129:
   indexForm->indisvalid = 0;
   indexForm->indisclustered = 0;
   break;
  case 128:
   Assert(!indexForm->indisvalid);
   indexForm->indisready = 0;
   indexForm->indislive = 0;
   break;
 }


 heap_inplace_update(pg_index, indexTuple);

 table_close(pg_index, RowExclusiveLock);
}
