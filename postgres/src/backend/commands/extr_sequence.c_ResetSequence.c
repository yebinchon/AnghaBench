
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_16__ {int seqstart; } ;
struct TYPE_15__ {int is_called; scalar_t__ log_cnt; int last_value; } ;
struct TYPE_14__ {TYPE_1__* rd_rel; } ;
struct TYPE_13__ {int last; int cached; } ;
struct TYPE_12__ {scalar_t__ relfrozenxid; scalar_t__ relminmxid; int relpersistence; } ;
typedef TYPE_2__* SeqTable ;
typedef TYPE_3__* Relation ;
typedef int Oid ;
typedef int HeapTupleData ;
typedef int HeapTuple ;
typedef TYPE_4__* Form_pg_sequence_data ;
typedef TYPE_5__* Form_pg_sequence ;
typedef int Buffer ;


 int Assert (int) ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 scalar_t__ InvalidMultiXactId ;
 scalar_t__ InvalidTransactionId ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 int RelationSetNewRelfilenode (TYPE_3__*,int ) ;
 int ReleaseSysCache (int ) ;
 int SEQRELID ;
 int SearchSysCache1 (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int elog (int ,char*,int ) ;
 int fill_seq_with_data (TYPE_3__*,int ) ;
 int heap_copytuple (int *) ;
 int init_sequence (int ,TYPE_2__**,TYPE_3__**) ;
 int read_seq_tuple (TYPE_3__*,int *,int *) ;
 int relation_close (TYPE_3__*,int ) ;

void
ResetSequence(Oid seq_relid)
{
 Relation seq_rel;
 SeqTable elm;
 Form_pg_sequence_data seq;
 Buffer buf;
 HeapTupleData seqdatatuple;
 HeapTuple tuple;
 HeapTuple pgstuple;
 Form_pg_sequence pgsform;
 int64 startv;






 init_sequence(seq_relid, &elm, &seq_rel);
 (void) read_seq_tuple(seq_rel, &buf, &seqdatatuple);

 pgstuple = SearchSysCache1(SEQRELID, ObjectIdGetDatum(seq_relid));
 if (!HeapTupleIsValid(pgstuple))
  elog(ERROR, "cache lookup failed for sequence %u", seq_relid);
 pgsform = (Form_pg_sequence) GETSTRUCT(pgstuple);
 startv = pgsform->seqstart;
 ReleaseSysCache(pgstuple);




 tuple = heap_copytuple(&seqdatatuple);


 UnlockReleaseBuffer(buf);





 seq = (Form_pg_sequence_data) GETSTRUCT(tuple);
 seq->last_value = startv;
 seq->is_called = 0;
 seq->log_cnt = 0;




 RelationSetNewRelfilenode(seq_rel, seq_rel->rd_rel->relpersistence);






 Assert(seq_rel->rd_rel->relfrozenxid == InvalidTransactionId);
 Assert(seq_rel->rd_rel->relminmxid == InvalidMultiXactId);




 fill_seq_with_data(seq_rel, tuple);



 elm->cached = elm->last;

 relation_close(seq_rel, NoLock);
}
