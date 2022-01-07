
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int hasho_nextblkno; int hasho_prevblkno; } ;
struct TYPE_9__ {scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; int hashso_buc_split; scalar_t__ hashso_buc_populated; } ;
struct TYPE_8__ {int xs_snapshot; int opaque; int indexRelation; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__* IndexScanDesc ;
typedef TYPE_2__* HashScanOpaque ;
typedef TYPE_3__* HashPageOpaque ;
typedef scalar_t__ Buffer ;
typedef int BlockNumber ;


 int Assert (int ) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BlockNumberIsValid (int ) ;
 int BufferGetPage (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int HASH_READ ;
 scalar_t__ InvalidBuffer ;
 int LH_BUCKET_PAGE ;
 int LH_OVERFLOW_PAGE ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 int _hash_dropbuf (int ,scalar_t__) ;
 scalar_t__ _hash_getbuf (int ,int ,int ,int) ;
 int _hash_readnext (TYPE_1__*,scalar_t__*,int *,TYPE_3__**) ;
 int _hash_relbuf (int ,scalar_t__) ;

__attribute__((used)) static void
_hash_readprev(IndexScanDesc scan,
      Buffer *bufp, Page *pagep, HashPageOpaque *opaquep)
{
 BlockNumber blkno;
 Relation rel = scan->indexRelation;
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 bool haveprevblk;

 blkno = (*opaquep)->hasho_prevblkno;





 if (*bufp == so->hashso_bucket_buf || *bufp == so->hashso_split_bucket_buf)
 {
  LockBuffer(*bufp, BUFFER_LOCK_UNLOCK);
  haveprevblk = 0;
 }
 else
 {
  _hash_relbuf(rel, *bufp);
  haveprevblk = 1;
 }

 *bufp = InvalidBuffer;

 CHECK_FOR_INTERRUPTS();

 if (haveprevblk)
 {
  Assert(BlockNumberIsValid(blkno));
  *bufp = _hash_getbuf(rel, blkno, HASH_READ,
        LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);
  *pagep = BufferGetPage(*bufp);
  TestForOldSnapshot(scan->xs_snapshot, rel, *pagep);
  *opaquep = (HashPageOpaque) PageGetSpecialPointer(*pagep);





  if (*bufp == so->hashso_bucket_buf || *bufp == so->hashso_split_bucket_buf)
   _hash_dropbuf(rel, *bufp);
 }
 else if (so->hashso_buc_populated && so->hashso_buc_split)
 {




  *bufp = so->hashso_bucket_buf;





  Assert(BufferIsValid(*bufp));

  LockBuffer(*bufp, BUFFER_LOCK_SHARE);
  *pagep = BufferGetPage(*bufp);
  *opaquep = (HashPageOpaque) PageGetSpecialPointer(*pagep);


  while (BlockNumberIsValid((*opaquep)->hasho_nextblkno))
   _hash_readnext(scan, bufp, pagep, opaquep);





  so->hashso_buc_split = 0;
 }
}
