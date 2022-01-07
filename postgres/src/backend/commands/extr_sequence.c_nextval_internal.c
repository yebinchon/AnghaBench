
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_16__ {int node; } ;
typedef TYPE_1__ xl_seq_rec ;
typedef scalar_t__ int64 ;
typedef int buf ;
typedef scalar_t__ XLogRecPtr ;
struct TYPE_21__ {scalar_t__ seqincrement; scalar_t__ seqmax; scalar_t__ seqmin; scalar_t__ seqcache; int seqcycle; } ;
struct TYPE_20__ {scalar_t__ last_value; scalar_t__ log_cnt; int is_called; } ;
struct TYPE_19__ {int t_len; scalar_t__ t_data; } ;
struct TYPE_18__ {int rd_node; int rd_islocaltemp; } ;
struct TYPE_17__ {scalar_t__ last; scalar_t__ cached; int last_valid; scalar_t__ increment; int relid; } ;
typedef TYPE_2__* SeqTable ;
typedef TYPE_3__* Relation ;
typedef int Page ;
typedef int Oid ;
typedef TYPE_4__ HeapTupleData ;
typedef int HeapTuple ;
typedef TYPE_5__* Form_pg_sequence_data ;
typedef TYPE_6__* Form_pg_sequence ;
typedef int Buffer ;


 scalar_t__ ACLCHECK_OK ;
 int ACL_UPDATE ;
 int ACL_USAGE ;
 int Assert (int) ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 int ERRCODE_INSUFFICIENT_PRIVILEGE ;
 int ERRCODE_SEQUENCE_GENERATOR_LIMIT_EXCEEDED ;
 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ GetRedoRecPtr () ;
 int GetTopTransactionId () ;
 int GetUserId () ;
 int HeapTupleIsValid (int ) ;
 char* INT64_FORMAT ;
 int MarkBufferDirty (int ) ;
 int NoLock ;
 int ObjectIdGetDatum (int ) ;
 scalar_t__ PageGetLSN (int ) ;
 int PageSetLSN (int ,scalar_t__) ;
 int PreventCommandIfParallelMode (char*) ;
 int PreventCommandIfReadOnly (char*) ;
 int REGBUF_WILL_INIT ;
 int RM_SEQ_ID ;
 int RelationGetRelationName (TYPE_3__*) ;
 scalar_t__ RelationNeedsWAL (TYPE_3__*) ;
 int ReleaseSysCache (int ) ;
 int SEQRELID ;
 scalar_t__ SEQ_LOG_VALS ;
 int START_CRIT_SECTION () ;
 int SearchSysCache1 (int ,int ) ;
 int UnlockReleaseBuffer (int ) ;
 int XLOG_SEQ_LOG ;
 int XLogBeginInsert () ;
 scalar_t__ XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int elog (int ,char*,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,int ,...) ;
 int init_sequence (int ,TYPE_2__**,TYPE_3__**) ;
 TYPE_2__* last_used_seq ;
 scalar_t__ pg_class_aclcheck (int ,int ,int) ;
 TYPE_5__* read_seq_tuple (TYPE_3__*,int *,TYPE_4__*) ;
 int relation_close (TYPE_3__*,int ) ;
 int snprintf (char*,int,char*,scalar_t__) ;

int64
nextval_internal(Oid relid, bool check_permissions)
{
 SeqTable elm;
 Relation seqrel;
 Buffer buf;
 Page page;
 HeapTuple pgstuple;
 Form_pg_sequence pgsform;
 HeapTupleData seqdatatuple;
 Form_pg_sequence_data seq;
 int64 incby,
    maxv,
    minv,
    cache,
    log,
    fetch,
    last;
 int64 result,
    next,
    rescnt = 0;
 bool cycle;
 bool logit = 0;


 init_sequence(relid, &elm, &seqrel);

 if (check_permissions &&
  pg_class_aclcheck(elm->relid, GetUserId(),
        ACL_USAGE | ACL_UPDATE) != ACLCHECK_OK)
  ereport(ERROR,
    (errcode(ERRCODE_INSUFFICIENT_PRIVILEGE),
     errmsg("permission denied for sequence %s",
      RelationGetRelationName(seqrel))));


 if (!seqrel->rd_islocaltemp)
  PreventCommandIfReadOnly("nextval()");






 PreventCommandIfParallelMode("nextval()");

 if (elm->last != elm->cached)
 {
  Assert(elm->last_valid);
  Assert(elm->increment != 0);
  elm->last += elm->increment;
  relation_close(seqrel, NoLock);
  last_used_seq = elm;
  return elm->last;
 }

 pgstuple = SearchSysCache1(SEQRELID, ObjectIdGetDatum(relid));
 if (!HeapTupleIsValid(pgstuple))
  elog(ERROR, "cache lookup failed for sequence %u", relid);
 pgsform = (Form_pg_sequence) GETSTRUCT(pgstuple);
 incby = pgsform->seqincrement;
 maxv = pgsform->seqmax;
 minv = pgsform->seqmin;
 cache = pgsform->seqcache;
 cycle = pgsform->seqcycle;
 ReleaseSysCache(pgstuple);


 seq = read_seq_tuple(seqrel, &buf, &seqdatatuple);
 page = BufferGetPage(buf);

 elm->increment = incby;
 last = next = result = seq->last_value;
 fetch = cache;
 log = seq->log_cnt;

 if (!seq->is_called)
 {
  rescnt++;
  fetch--;
 }
 if (log < fetch || !seq->is_called)
 {

  fetch = log = fetch + SEQ_LOG_VALS;
  logit = 1;
 }
 else
 {
  XLogRecPtr redoptr = GetRedoRecPtr();

  if (PageGetLSN(page) <= redoptr)
  {

   fetch = log = fetch + SEQ_LOG_VALS;
   logit = 1;
  }
 }

 while (fetch)
 {




  if (incby > 0)
  {

   if ((maxv >= 0 && next > maxv - incby) ||
    (maxv < 0 && next + incby > maxv))
   {
    if (rescnt > 0)
     break;
    if (!cycle)
    {
     char buf[100];

     snprintf(buf, sizeof(buf), INT64_FORMAT, maxv);
     ereport(ERROR,
       (errcode(ERRCODE_SEQUENCE_GENERATOR_LIMIT_EXCEEDED),
        errmsg("nextval: reached maximum value of sequence \"%s\" (%s)",
         RelationGetRelationName(seqrel), buf)));
    }
    next = minv;
   }
   else
    next += incby;
  }
  else
  {

   if ((minv < 0 && next < minv - incby) ||
    (minv >= 0 && next + incby < minv))
   {
    if (rescnt > 0)
     break;
    if (!cycle)
    {
     char buf[100];

     snprintf(buf, sizeof(buf), INT64_FORMAT, minv);
     ereport(ERROR,
       (errcode(ERRCODE_SEQUENCE_GENERATOR_LIMIT_EXCEEDED),
        errmsg("nextval: reached minimum value of sequence \"%s\" (%s)",
         RelationGetRelationName(seqrel), buf)));
    }
    next = maxv;
   }
   else
    next += incby;
  }
  fetch--;
  if (rescnt < cache)
  {
   log--;
   rescnt++;
   last = next;
   if (rescnt == 1)
    result = next;
  }
 }

 log -= fetch;
 Assert(log >= 0);


 elm->last = result;
 elm->cached = last;
 elm->last_valid = 1;

 last_used_seq = elm;
 if (logit && RelationNeedsWAL(seqrel))
  GetTopTransactionId();


 START_CRIT_SECTION();
 MarkBufferDirty(buf);


 if (logit && RelationNeedsWAL(seqrel))
 {
  xl_seq_rec xlrec;
  XLogRecPtr recptr;







  XLogBeginInsert();
  XLogRegisterBuffer(0, buf, REGBUF_WILL_INIT);


  seq->last_value = next;
  seq->is_called = 1;
  seq->log_cnt = 0;

  xlrec.node = seqrel->rd_node;

  XLogRegisterData((char *) &xlrec, sizeof(xl_seq_rec));
  XLogRegisterData((char *) seqdatatuple.t_data, seqdatatuple.t_len);

  recptr = XLogInsert(RM_SEQ_ID, XLOG_SEQ_LOG);

  PageSetLSN(page, recptr);
 }


 seq->last_value = last;
 seq->is_called = 1;
 seq->log_cnt = log;

 END_CRIT_SECTION();

 UnlockReleaseBuffer(buf);

 relation_close(seqrel, NoLock);

 return result;
}
