
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_19__ ;


struct TYPE_30__ {int for_identity; int options; TYPE_19__* sequence; scalar_t__ missing_ok; } ;
struct TYPE_29__ {int t_self; } ;
struct TYPE_28__ {TYPE_1__* rd_rel; } ;
struct TYPE_27__ {int last; int cached; } ;
struct TYPE_26__ {scalar_t__ relfrozenxid; scalar_t__ relminmxid; int relpersistence; } ;
struct TYPE_25__ {int relname; } ;
typedef TYPE_2__* SeqTable ;
typedef TYPE_3__* Relation ;
typedef int ParseState ;
typedef scalar_t__ Oid ;
typedef int ObjectAddress ;
typedef int List ;
typedef int HeapTupleData ;
typedef TYPE_4__* HeapTuple ;
typedef scalar_t__ Form_pg_sequence_data ;
typedef scalar_t__ Form_pg_sequence ;
typedef int Buffer ;
typedef TYPE_5__ AlterSeqStmt ;


 int Assert (int) ;
 int CatalogTupleUpdate (TYPE_3__*,int *,TYPE_4__*) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (TYPE_4__*) ;
 int GetTopTransactionId () ;
 int HeapTupleIsValid (TYPE_4__*) ;
 scalar_t__ InvalidMultiXactId ;
 int InvalidObjectAddress ;
 scalar_t__ InvalidOid ;
 scalar_t__ InvalidTransactionId ;
 int InvokeObjectPostAlterHook (int ,scalar_t__,int ) ;
 int NOTICE ;
 int NoLock ;
 int ObjectAddressSet (int ,int ,scalar_t__) ;
 int ObjectIdGetDatum (scalar_t__) ;
 int RVR_MISSING_OK ;
 int RangeVarCallbackOwnsRelation ;
 scalar_t__ RangeVarGetRelidExtended (TYPE_19__*,int ,int ,int ,int *) ;
 scalar_t__ RelationNeedsWAL (TYPE_3__*) ;
 int RelationRelationId ;
 int RelationSetNewRelfilenode (TYPE_3__*,int ) ;
 int RowExclusiveLock ;
 int SEQRELID ;
 TYPE_4__* SearchSysCacheCopy1 (int ,int ) ;
 int SequenceRelationId ;
 int ShareRowExclusiveLock ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*,scalar_t__) ;
 int ereport (int ,int ) ;
 int errmsg (char*,int ) ;
 int fill_seq_with_data (TYPE_3__*,TYPE_4__*) ;
 TYPE_4__* heap_copytuple (int *) ;
 int init_params (int *,int ,int ,int,scalar_t__,scalar_t__,int*,int **) ;
 int init_sequence (scalar_t__,TYPE_2__**,TYPE_3__**) ;
 int process_owned_by (TYPE_3__*,int *,int ) ;
 int read_seq_tuple (TYPE_3__*,int *,int *) ;
 int relation_close (TYPE_3__*,int ) ;
 int table_close (TYPE_3__*,int ) ;
 TYPE_3__* table_open (int ,int ) ;

ObjectAddress
AlterSequence(ParseState *pstate, AlterSeqStmt *stmt)
{
 Oid relid;
 SeqTable elm;
 Relation seqrel;
 Buffer buf;
 HeapTupleData datatuple;
 Form_pg_sequence seqform;
 Form_pg_sequence_data newdataform;
 bool need_seq_rewrite;
 List *owned_by;
 ObjectAddress address;
 Relation rel;
 HeapTuple seqtuple;
 HeapTuple newdatatuple;


 relid = RangeVarGetRelidExtended(stmt->sequence,
          ShareRowExclusiveLock,
          stmt->missing_ok ? RVR_MISSING_OK : 0,
          RangeVarCallbackOwnsRelation,
          ((void*)0));
 if (relid == InvalidOid)
 {
  ereport(NOTICE,
    (errmsg("relation \"%s\" does not exist, skipping",
      stmt->sequence->relname)));
  return InvalidObjectAddress;
 }

 init_sequence(relid, &elm, &seqrel);

 rel = table_open(SequenceRelationId, RowExclusiveLock);
 seqtuple = SearchSysCacheCopy1(SEQRELID,
           ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(seqtuple))
  elog(ERROR, "cache lookup failed for sequence %u",
    relid);

 seqform = (Form_pg_sequence) GETSTRUCT(seqtuple);


 (void) read_seq_tuple(seqrel, &buf, &datatuple);


 newdatatuple = heap_copytuple(&datatuple);
 newdataform = (Form_pg_sequence_data) GETSTRUCT(newdatatuple);

 UnlockReleaseBuffer(buf);


 init_params(pstate, stmt->options, stmt->for_identity, 0,
    seqform, newdataform,
    &need_seq_rewrite, &owned_by);



 elm->cached = elm->last;


 if (need_seq_rewrite)
 {

  if (RelationNeedsWAL(seqrel))
   GetTopTransactionId();





  RelationSetNewRelfilenode(seqrel, seqrel->rd_rel->relpersistence);






  Assert(seqrel->rd_rel->relfrozenxid == InvalidTransactionId);
  Assert(seqrel->rd_rel->relminmxid == InvalidMultiXactId);




  fill_seq_with_data(seqrel, newdatatuple);
 }


 if (owned_by)
  process_owned_by(seqrel, owned_by, stmt->for_identity);


 CatalogTupleUpdate(rel, &seqtuple->t_self, seqtuple);

 InvokeObjectPostAlterHook(RelationRelationId, relid, 0);

 ObjectAddressSet(address, RelationRelationId, relid);

 table_close(rel, RowExclusiveLock);
 relation_close(seqrel, NoLock);

 return address;
}
