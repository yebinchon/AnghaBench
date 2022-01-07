
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ itemIndex; scalar_t__ lastItem; scalar_t__ firstItem; TYPE_2__* items; int prevPage; int nextPage; } ;
struct TYPE_11__ {scalar_t__ numKilled; scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; TYPE_8__ currPos; } ;
struct TYPE_10__ {int heapTid; } ;
struct TYPE_9__ {int xs_heaptid; int xs_snapshot; int opaque; int indexRelation; } ;
typedef int ScanDirection ;
typedef int Relation ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__ HashScanPosItem ;
typedef TYPE_3__* HashScanOpaque ;
typedef scalar_t__ Buffer ;
typedef int BlockNumber ;


 scalar_t__ BlockNumberIsValid (int ) ;
 int BufferGetPage (scalar_t__) ;
 int HASH_READ ;
 int HashScanPosInvalidate (TYPE_8__) ;
 int LH_BUCKET_PAGE ;
 int LH_OVERFLOW_PAGE ;
 scalar_t__ ScanDirectionIsForward (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int _hash_dropbuf (int ,scalar_t__) ;
 int _hash_dropscanbuf (int ,TYPE_3__*) ;
 scalar_t__ _hash_getbuf (int ,int ,int ,int) ;
 int _hash_kill_items (TYPE_1__*) ;
 int _hash_readpage (TYPE_1__*,scalar_t__*,int ) ;

bool
_hash_next(IndexScanDesc scan, ScanDirection dir)
{
 Relation rel = scan->indexRelation;
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 HashScanPosItem *currItem;
 BlockNumber blkno;
 Buffer buf;
 bool end_of_scan = 0;







 if (ScanDirectionIsForward(dir))
 {
  if (++so->currPos.itemIndex > so->currPos.lastItem)
  {
   if (so->numKilled > 0)
    _hash_kill_items(scan);

   blkno = so->currPos.nextPage;
   if (BlockNumberIsValid(blkno))
   {
    buf = _hash_getbuf(rel, blkno, HASH_READ, LH_OVERFLOW_PAGE);
    TestForOldSnapshot(scan->xs_snapshot, rel, BufferGetPage(buf));
    if (!_hash_readpage(scan, &buf, dir))
     end_of_scan = 1;
   }
   else
    end_of_scan = 1;
  }
 }
 else
 {
  if (--so->currPos.itemIndex < so->currPos.firstItem)
  {
   if (so->numKilled > 0)
    _hash_kill_items(scan);

   blkno = so->currPos.prevPage;
   if (BlockNumberIsValid(blkno))
   {
    buf = _hash_getbuf(rel, blkno, HASH_READ,
           LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
    TestForOldSnapshot(scan->xs_snapshot, rel, BufferGetPage(buf));






    if (buf == so->hashso_bucket_buf ||
     buf == so->hashso_split_bucket_buf)
     _hash_dropbuf(rel, buf);

    if (!_hash_readpage(scan, &buf, dir))
     end_of_scan = 1;
   }
   else
    end_of_scan = 1;
  }
 }

 if (end_of_scan)
 {
  _hash_dropscanbuf(rel, so);
  HashScanPosInvalidate(so->currPos);
  return 0;
 }


 currItem = &so->currPos.items[so->currPos.itemIndex];
 scan->xs_heaptid = currItem->heapTid;

 return 1;
}
