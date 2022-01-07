
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {void* combocid; void* cmax; void* cmin; int target_tid; int target_node; int top_xid; } ;
typedef TYPE_1__ xl_heap_new_cid ;
typedef int XLogRecPtr ;
struct TYPE_14__ {scalar_t__ t_tableOid; int t_self; TYPE_3__* t_data; } ;
struct TYPE_13__ {int t_infomask; } ;
struct TYPE_12__ {int rd_node; } ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__* HeapTupleHeader ;
typedef TYPE_4__* HeapTuple ;


 int Assert (int) ;
 int GetTopTransactionId () ;
 int HEAP_COMBOCID ;
 int HEAP_XMAX_INVALID ;
 scalar_t__ HEAP_XMAX_IS_LOCKED_ONLY (int) ;
 void* HeapTupleHeaderGetCmax (TYPE_3__*) ;
 void* HeapTupleHeaderGetCmin (TYPE_3__*) ;
 void* HeapTupleHeaderGetRawCommandId (TYPE_3__*) ;
 int HeapTupleHeaderXminInvalid (TYPE_3__*) ;
 void* InvalidCommandId ;
 scalar_t__ InvalidOid ;
 int ItemPointerIsValid (int *) ;
 int RM_HEAP2_ID ;
 int SizeOfHeapNewCid ;
 int XLOG_HEAP2_NEW_CID ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int ) ;

__attribute__((used)) static XLogRecPtr
log_heap_new_cid(Relation relation, HeapTuple tup)
{
 xl_heap_new_cid xlrec;

 XLogRecPtr recptr;
 HeapTupleHeader hdr = tup->t_data;

 Assert(ItemPointerIsValid(&tup->t_self));
 Assert(tup->t_tableOid != InvalidOid);

 xlrec.top_xid = GetTopTransactionId();
 xlrec.target_node = relation->rd_node;
 xlrec.target_tid = tup->t_self;





 if (hdr->t_infomask & HEAP_COMBOCID)
 {
  Assert(!(hdr->t_infomask & HEAP_XMAX_INVALID));
  Assert(!HeapTupleHeaderXminInvalid(hdr));
  xlrec.cmin = HeapTupleHeaderGetCmin(hdr);
  xlrec.cmax = HeapTupleHeaderGetCmax(hdr);
  xlrec.combocid = HeapTupleHeaderGetRawCommandId(hdr);
 }

 else
 {
  if (hdr->t_infomask & HEAP_XMAX_INVALID ||
   HEAP_XMAX_IS_LOCKED_ONLY(hdr->t_infomask))
  {
   xlrec.cmin = HeapTupleHeaderGetRawCommandId(hdr);
   xlrec.cmax = InvalidCommandId;
  }

  else
  {
   xlrec.cmin = InvalidCommandId;
   xlrec.cmax = HeapTupleHeaderGetRawCommandId(hdr);

  }
  xlrec.combocid = InvalidCommandId;
 }






 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, SizeOfHeapNewCid);



 recptr = XLogInsert(RM_HEAP2_ID, XLOG_HEAP2_NEW_CID);

 return recptr;
}
