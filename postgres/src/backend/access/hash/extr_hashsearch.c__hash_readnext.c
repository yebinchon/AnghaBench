
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int hasho_nextblkno; } ;
struct TYPE_7__ {scalar_t__ hashso_bucket_buf; scalar_t__ hashso_split_bucket_buf; int hashso_buc_split; scalar_t__ hashso_buc_populated; } ;
struct TYPE_6__ {int xs_snapshot; int opaque; int indexRelation; } ;
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
 scalar_t__ BlockNumberIsValid (int ) ;
 int BufferGetBlockNumber (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int BufferIsValid (scalar_t__) ;
 int CHECK_FOR_INTERRUPTS () ;
 int HASH_READ ;
 scalar_t__ InvalidBuffer ;
 int LH_OVERFLOW_PAGE ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int PredicateLockPage (int ,int ,int ) ;
 int TestForOldSnapshot (int ,int ,int ) ;
 scalar_t__ _hash_getbuf (int ,int ,int ,int ) ;
 int _hash_relbuf (int ,scalar_t__) ;

__attribute__((used)) static void
_hash_readnext(IndexScanDesc scan,
      Buffer *bufp, Page *pagep, HashPageOpaque *opaquep)
{
 BlockNumber blkno;
 Relation rel = scan->indexRelation;
 HashScanOpaque so = (HashScanOpaque) scan->opaque;
 bool block_found = 0;

 blkno = (*opaquep)->hasho_nextblkno;





 if (*bufp == so->hashso_bucket_buf || *bufp == so->hashso_split_bucket_buf)
  LockBuffer(*bufp, BUFFER_LOCK_UNLOCK);
 else
  _hash_relbuf(rel, *bufp);

 *bufp = InvalidBuffer;

 CHECK_FOR_INTERRUPTS();
 if (BlockNumberIsValid(blkno))
 {
  *bufp = _hash_getbuf(rel, blkno, HASH_READ, LH_OVERFLOW_PAGE);
  block_found = 1;
 }
 else if (so->hashso_buc_populated && !so->hashso_buc_split)
 {




  *bufp = so->hashso_split_bucket_buf;





  Assert(BufferIsValid(*bufp));

  LockBuffer(*bufp, BUFFER_LOCK_SHARE);
  PredicateLockPage(rel, BufferGetBlockNumber(*bufp), scan->xs_snapshot);





  so->hashso_buc_split = 1;

  block_found = 1;
 }

 if (block_found)
 {
  *pagep = BufferGetPage(*bufp);
  TestForOldSnapshot(scan->xs_snapshot, rel, *pagep);
  *opaquep = (HashPageOpaque) PageGetSpecialPointer(*pagep);
 }
}
