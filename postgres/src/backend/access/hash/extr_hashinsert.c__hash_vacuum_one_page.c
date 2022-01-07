
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ntuples; int latestRemovedXid; } ;
typedef TYPE_1__ xl_hash_vacuum_one_page ;
typedef int XLogRecPtr ;
typedef int TransactionId ;
struct TYPE_7__ {int hashm_ntuples; } ;
struct TYPE_6__ {int hasho_flag; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemId ;
typedef TYPE_2__* HashPageOpaque ;
typedef TYPE_3__* HashMetaPage ;
typedef int Buffer ;


 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 int END_CRIT_SECTION () ;
 scalar_t__ FirstOffsetNumber ;
 TYPE_3__* HashPageGetMeta (int ) ;
 scalar_t__ ItemIdIsDead (int ) ;
 int LH_PAGE_HAS_DEAD_TUPLES ;
 int LockBuffer (int ,int ) ;
 int MarkBufferDirty (int ) ;
 int MaxOffsetNumber ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PageIndexMultiDelete (int ,scalar_t__*,int) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_STANDARD ;
 int RM_HASH_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int START_CRIT_SECTION () ;
 int SizeOfHashVacuumOnePage ;
 int XLOG_HASH_VACUUM_ONE_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int) ;
 int index_compute_xid_horizon_for_tuples (int ,int ,int ,scalar_t__*,int) ;

__attribute__((used)) static void
_hash_vacuum_one_page(Relation rel, Relation hrel, Buffer metabuf, Buffer buf)
{
 OffsetNumber deletable[MaxOffsetNumber];
 int ndeletable = 0;
 OffsetNumber offnum,
    maxoff;
 Page page = BufferGetPage(buf);
 HashPageOpaque pageopaque;
 HashMetaPage metap;


 maxoff = PageGetMaxOffsetNumber(page);
 for (offnum = FirstOffsetNumber;
   offnum <= maxoff;
   offnum = OffsetNumberNext(offnum))
 {
  ItemId itemId = PageGetItemId(page, offnum);

  if (ItemIdIsDead(itemId))
   deletable[ndeletable++] = offnum;
 }

 if (ndeletable > 0)
 {
  TransactionId latestRemovedXid;

  latestRemovedXid =
   index_compute_xid_horizon_for_tuples(rel, hrel, buf,
             deletable, ndeletable);




  LockBuffer(metabuf, BUFFER_LOCK_EXCLUSIVE);


  START_CRIT_SECTION();

  PageIndexMultiDelete(page, deletable, ndeletable);
  pageopaque = (HashPageOpaque) PageGetSpecialPointer(page);
  pageopaque->hasho_flag &= ~LH_PAGE_HAS_DEAD_TUPLES;

  metap = HashPageGetMeta(BufferGetPage(metabuf));
  metap->hashm_ntuples -= ndeletable;

  MarkBufferDirty(buf);
  MarkBufferDirty(metabuf);


  if (RelationNeedsWAL(rel))
  {
   xl_hash_vacuum_one_page xlrec;
   XLogRecPtr recptr;

   xlrec.latestRemovedXid = latestRemovedXid;
   xlrec.ntuples = ndeletable;

   XLogBeginInsert();
   XLogRegisterBuffer(0, buf, REGBUF_STANDARD);
   XLogRegisterData((char *) &xlrec, SizeOfHashVacuumOnePage);






   XLogRegisterData((char *) deletable,
        ndeletable * sizeof(OffsetNumber));

   XLogRegisterBuffer(1, metabuf, REGBUF_STANDARD);

   recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_VACUUM_ONE_PAGE);

   PageSetLSN(BufferGetPage(buf), recptr);
   PageSetLSN(BufferGetPage(metabuf), recptr);
  }

  END_CRIT_SECTION();





  LockBuffer(metabuf, BUFFER_LOCK_UNLOCK);
 }
}
