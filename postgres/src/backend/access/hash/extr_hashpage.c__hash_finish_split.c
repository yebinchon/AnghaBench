
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
typedef int hash_ctl ;
struct TYPE_8__ {int keysize; int entrysize; int hcxt; } ;
struct TYPE_7__ {scalar_t__ hasho_nextblkno; int hasho_bucket; } ;
struct TYPE_6__ {int t_tid; } ;
typedef int Relation ;
typedef int Page ;
typedef scalar_t__ OffsetNumber ;
typedef int ItemPointerData ;
typedef TYPE_1__* IndexTuple ;
typedef TYPE_2__* HashPageOpaque ;
typedef int HTAB ;
typedef TYPE_3__ HASHCTL ;
typedef scalar_t__ Buffer ;
typedef int Bucket ;
typedef scalar_t__ BlockNumber ;


 int Assert (int) ;
 int BUFFER_LOCK_UNLOCK ;
 int BlockNumberIsValid (scalar_t__) ;
 int BufferGetPage (scalar_t__) ;
 int ConditionalLockBufferForCleanup (scalar_t__) ;
 int CurrentMemoryContext ;
 scalar_t__ FirstOffsetNumber ;
 int HASH_BLOBS ;
 int HASH_CONTEXT ;
 int HASH_ELEM ;
 int HASH_ENTER ;
 int HASH_READ ;
 scalar_t__ InvalidBuffer ;
 int LH_BUCKET_PAGE ;
 int LH_OVERFLOW_PAGE ;
 int LockBuffer (scalar_t__,int ) ;
 scalar_t__ OffsetNumberNext (scalar_t__) ;
 scalar_t__ PageGetItem (int ,int ) ;
 int PageGetItemId (int ,scalar_t__) ;
 scalar_t__ PageGetMaxOffsetNumber (int ) ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _hash_dropbuf (int ,scalar_t__) ;
 scalar_t__ _hash_get_newblock_from_oldbucket (int ,int ) ;
 scalar_t__ _hash_getbuf (int ,scalar_t__,int ,int) ;
 int _hash_relbuf (int ,scalar_t__) ;
 int _hash_splitbucket (int ,scalar_t__,int ,int ,scalar_t__,scalar_t__,int *,int ,int ,int ) ;
 int * hash_create (char*,int,TYPE_3__*,int) ;
 int hash_destroy (int *) ;
 int hash_search (int *,int *,int ,int*) ;
 int memset (TYPE_3__*,int ,int) ;

void
_hash_finish_split(Relation rel, Buffer metabuf, Buffer obuf, Bucket obucket,
       uint32 maxbucket, uint32 highmask, uint32 lowmask)
{
 HASHCTL hash_ctl;
 HTAB *tidhtab;
 Buffer bucket_nbuf = InvalidBuffer;
 Buffer nbuf;
 Page npage;
 BlockNumber nblkno;
 BlockNumber bucket_nblkno;
 HashPageOpaque npageopaque;
 Bucket nbucket;
 bool found;


 memset(&hash_ctl, 0, sizeof(hash_ctl));
 hash_ctl.keysize = sizeof(ItemPointerData);
 hash_ctl.entrysize = sizeof(ItemPointerData);
 hash_ctl.hcxt = CurrentMemoryContext;

 tidhtab =
  hash_create("bucket ctids",
     256,
     &hash_ctl,
     HASH_ELEM | HASH_BLOBS | HASH_CONTEXT);

 bucket_nblkno = nblkno = _hash_get_newblock_from_oldbucket(rel, obucket);




 for (;;)
 {
  OffsetNumber noffnum;
  OffsetNumber nmaxoffnum;

  nbuf = _hash_getbuf(rel, nblkno, HASH_READ,
       LH_BUCKET_PAGE | LH_OVERFLOW_PAGE);


  if (nblkno == bucket_nblkno)
   bucket_nbuf = nbuf;

  npage = BufferGetPage(nbuf);
  npageopaque = (HashPageOpaque) PageGetSpecialPointer(npage);


  nmaxoffnum = PageGetMaxOffsetNumber(npage);
  for (noffnum = FirstOffsetNumber;
    noffnum <= nmaxoffnum;
    noffnum = OffsetNumberNext(noffnum))
  {
   IndexTuple itup;


   itup = (IndexTuple) PageGetItem(npage,
           PageGetItemId(npage, noffnum));

   (void) hash_search(tidhtab, &itup->t_tid, HASH_ENTER, &found);

   Assert(!found);
  }

  nblkno = npageopaque->hasho_nextblkno;





  if (nbuf == bucket_nbuf)
   LockBuffer(nbuf, BUFFER_LOCK_UNLOCK);
  else
   _hash_relbuf(rel, nbuf);


  if (!BlockNumberIsValid(nblkno))
   break;
 }







 if (!ConditionalLockBufferForCleanup(obuf))
 {
  hash_destroy(tidhtab);
  return;
 }
 if (!ConditionalLockBufferForCleanup(bucket_nbuf))
 {
  LockBuffer(obuf, BUFFER_LOCK_UNLOCK);
  hash_destroy(tidhtab);
  return;
 }

 npage = BufferGetPage(bucket_nbuf);
 npageopaque = (HashPageOpaque) PageGetSpecialPointer(npage);
 nbucket = npageopaque->hasho_bucket;

 _hash_splitbucket(rel, metabuf, obucket,
       nbucket, obuf, bucket_nbuf, tidhtab,
       maxbucket, highmask, lowmask);

 _hash_dropbuf(rel, bucket_nbuf);
 hash_destroy(tidhtab);
}
