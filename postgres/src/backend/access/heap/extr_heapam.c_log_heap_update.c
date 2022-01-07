
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_13__ ;


struct TYPE_16__ {void* new_xmax; scalar_t__ new_offnum; int old_infobits_set; void* old_xmax; scalar_t__ old_offnum; int flags; } ;
typedef TYPE_2__ xl_heap_update ;
struct TYPE_17__ {scalar_t__ t_hoff; int t_infomask; int t_infomask2; } ;
typedef TYPE_3__ xl_heap_header ;
typedef int uint8 ;
typedef size_t uint16 ;
typedef int XLogRecPtr ;
struct TYPE_19__ {int t_len; TYPE_13__* t_data; int t_self; } ;
struct TYPE_18__ {TYPE_1__* rd_rel; } ;
struct TYPE_15__ {scalar_t__ relreplident; } ;
struct TYPE_14__ {int t_hoff; int t_infomask; int t_infomask2; } ;
typedef TYPE_4__* Relation ;
typedef int Page ;
typedef TYPE_5__* HeapTuple ;
typedef scalar_t__ Buffer ;


 int Assert (int) ;
 int BufferGetPage (scalar_t__) ;
 scalar_t__ FirstOffsetNumber ;
 void* HeapTupleHeaderGetRawXmax (TYPE_13__*) ;
 scalar_t__ HeapTupleIsHeapOnly (TYPE_5__*) ;
 scalar_t__ ItemPointerGetOffsetNumber (int *) ;
 size_t Min (int,int) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 int REGBUF_KEEP_DATA ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 scalar_t__ REPLICA_IDENTITY_FULL ;
 int RM_HEAP_ID ;
 int RelationIsLogicallyLogged (TYPE_4__*) ;
 int RelationNeedsWAL (TYPE_4__*) ;
 scalar_t__ SizeOfHeapHeader ;
 scalar_t__ SizeOfHeapUpdate ;
 scalar_t__ SizeofHeapTupleHeader ;
 int XLH_UPDATE_CONTAINS_NEW_TUPLE ;
 int XLH_UPDATE_CONTAINS_OLD_KEY ;
 int XLH_UPDATE_CONTAINS_OLD_TUPLE ;
 int XLH_UPDATE_NEW_ALL_VISIBLE_CLEARED ;
 int XLH_UPDATE_OLD_ALL_VISIBLE_CLEARED ;
 int XLH_UPDATE_PREFIX_FROM_OLD ;
 int XLH_UPDATE_SUFFIX_FROM_OLD ;
 int XLOG_HEAP_HOT_UPDATE ;
 int XLOG_HEAP_INIT_PAGE ;
 int XLOG_HEAP_UPDATE ;
 int XLOG_INCLUDE_ORIGIN ;
 int XLogBeginInsert () ;
 int XLogCheckBufferNeedsBackup (scalar_t__) ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,size_t) ;
 int XLogRegisterBuffer (int,scalar_t__,int) ;
 int XLogRegisterData (char*,scalar_t__) ;
 int XLogSetRecordFlags (int ) ;
 int compute_infobits (int ,int ) ;

__attribute__((used)) static XLogRecPtr
log_heap_update(Relation reln, Buffer oldbuf,
    Buffer newbuf, HeapTuple oldtup, HeapTuple newtup,
    HeapTuple old_key_tuple,
    bool all_visible_cleared, bool new_all_visible_cleared)
{
 xl_heap_update xlrec;
 xl_heap_header xlhdr;
 xl_heap_header xlhdr_idx;
 uint8 info;
 uint16 prefix_suffix[2];
 uint16 prefixlen = 0,
    suffixlen = 0;
 XLogRecPtr recptr;
 Page page = BufferGetPage(newbuf);
 bool need_tuple_data = RelationIsLogicallyLogged(reln);
 bool init;
 int bufflags;


 Assert(RelationNeedsWAL(reln));

 XLogBeginInsert();

 if (HeapTupleIsHeapOnly(newtup))
  info = XLOG_HEAP_HOT_UPDATE;
 else
  info = XLOG_HEAP_UPDATE;
 if (oldbuf == newbuf && !need_tuple_data &&
  !XLogCheckBufferNeedsBackup(newbuf))
 {
  char *oldp = (char *) oldtup->t_data + oldtup->t_data->t_hoff;
  char *newp = (char *) newtup->t_data + newtup->t_data->t_hoff;
  int oldlen = oldtup->t_len - oldtup->t_data->t_hoff;
  int newlen = newtup->t_len - newtup->t_data->t_hoff;


  for (prefixlen = 0; prefixlen < Min(oldlen, newlen); prefixlen++)
  {
   if (newp[prefixlen] != oldp[prefixlen])
    break;
  }





  if (prefixlen < 3)
   prefixlen = 0;


  for (suffixlen = 0; suffixlen < Min(oldlen, newlen) - prefixlen; suffixlen++)
  {
   if (newp[newlen - suffixlen - 1] != oldp[oldlen - suffixlen - 1])
    break;
  }
  if (suffixlen < 3)
   suffixlen = 0;
 }


 xlrec.flags = 0;
 if (all_visible_cleared)
  xlrec.flags |= XLH_UPDATE_OLD_ALL_VISIBLE_CLEARED;
 if (new_all_visible_cleared)
  xlrec.flags |= XLH_UPDATE_NEW_ALL_VISIBLE_CLEARED;
 if (prefixlen > 0)
  xlrec.flags |= XLH_UPDATE_PREFIX_FROM_OLD;
 if (suffixlen > 0)
  xlrec.flags |= XLH_UPDATE_SUFFIX_FROM_OLD;
 if (need_tuple_data)
 {
  xlrec.flags |= XLH_UPDATE_CONTAINS_NEW_TUPLE;
  if (old_key_tuple)
  {
   if (reln->rd_rel->relreplident == REPLICA_IDENTITY_FULL)
    xlrec.flags |= XLH_UPDATE_CONTAINS_OLD_TUPLE;
   else
    xlrec.flags |= XLH_UPDATE_CONTAINS_OLD_KEY;
  }
 }


 if (ItemPointerGetOffsetNumber(&(newtup->t_self)) == FirstOffsetNumber &&
  PageGetMaxOffsetNumber(page) == FirstOffsetNumber)
 {
  info |= XLOG_HEAP_INIT_PAGE;
  init = 1;
 }
 else
  init = 0;


 xlrec.old_offnum = ItemPointerGetOffsetNumber(&oldtup->t_self);
 xlrec.old_xmax = HeapTupleHeaderGetRawXmax(oldtup->t_data);
 xlrec.old_infobits_set = compute_infobits(oldtup->t_data->t_infomask,
             oldtup->t_data->t_infomask2);


 xlrec.new_offnum = ItemPointerGetOffsetNumber(&newtup->t_self);
 xlrec.new_xmax = HeapTupleHeaderGetRawXmax(newtup->t_data);

 bufflags = REGBUF_STANDARD;
 if (init)
  bufflags |= REGBUF_WILL_INIT;
 if (need_tuple_data)
  bufflags |= REGBUF_KEEP_DATA;

 XLogRegisterBuffer(0, newbuf, bufflags);
 if (oldbuf != newbuf)
  XLogRegisterBuffer(1, oldbuf, REGBUF_STANDARD);

 XLogRegisterData((char *) &xlrec, SizeOfHeapUpdate);




 if (prefixlen > 0 || suffixlen > 0)
 {
  if (prefixlen > 0 && suffixlen > 0)
  {
   prefix_suffix[0] = prefixlen;
   prefix_suffix[1] = suffixlen;
   XLogRegisterBufData(0, (char *) &prefix_suffix, sizeof(uint16) * 2);
  }
  else if (prefixlen > 0)
  {
   XLogRegisterBufData(0, (char *) &prefixlen, sizeof(uint16));
  }
  else
  {
   XLogRegisterBufData(0, (char *) &suffixlen, sizeof(uint16));
  }
 }

 xlhdr.t_infomask2 = newtup->t_data->t_infomask2;
 xlhdr.t_infomask = newtup->t_data->t_infomask;
 xlhdr.t_hoff = newtup->t_data->t_hoff;
 Assert(SizeofHeapTupleHeader + prefixlen + suffixlen <= newtup->t_len);






 XLogRegisterBufData(0, (char *) &xlhdr, SizeOfHeapHeader);
 if (prefixlen == 0)
 {
  XLogRegisterBufData(0,
       ((char *) newtup->t_data) + SizeofHeapTupleHeader,
       newtup->t_len - SizeofHeapTupleHeader - suffixlen);
 }
 else
 {





  if (newtup->t_data->t_hoff - SizeofHeapTupleHeader > 0)
  {
   XLogRegisterBufData(0,
        ((char *) newtup->t_data) + SizeofHeapTupleHeader,
        newtup->t_data->t_hoff - SizeofHeapTupleHeader);
  }


  XLogRegisterBufData(0,
       ((char *) newtup->t_data) + newtup->t_data->t_hoff + prefixlen,
       newtup->t_len - newtup->t_data->t_hoff - prefixlen - suffixlen);
 }


 if (need_tuple_data && old_key_tuple)
 {

  xlhdr_idx.t_infomask2 = old_key_tuple->t_data->t_infomask2;
  xlhdr_idx.t_infomask = old_key_tuple->t_data->t_infomask;
  xlhdr_idx.t_hoff = old_key_tuple->t_data->t_hoff;

  XLogRegisterData((char *) &xlhdr_idx, SizeOfHeapHeader);


  XLogRegisterData((char *) old_key_tuple->t_data + SizeofHeapTupleHeader,
       old_key_tuple->t_len - SizeofHeapTupleHeader);
 }


 XLogSetRecordFlags(XLOG_INCLUDE_ORIGIN);

 recptr = XLogInsert(RM_HEAP_ID, info);

 return recptr;
}
