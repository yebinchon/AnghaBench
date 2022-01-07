
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_7__ {scalar_t__ hashm_maxbucket; int hashm_lowmask; int hashm_highmask; } ;
struct TYPE_6__ {scalar_t__ hasho_bucket; scalar_t__ hasho_prevblkno; } ;
typedef int Relation ;
typedef int Page ;
typedef TYPE_1__* HashPageOpaque ;
typedef TYPE_2__* HashMetaPage ;
typedef int Buffer ;
typedef scalar_t__ Bucket ;
typedef int BlockNumber ;


 int Assert (int) ;
 int BUCKET_TO_BLKNO (TYPE_2__*,scalar_t__) ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int HASH_READ ;
 int HASH_WRITE ;
 scalar_t__ InvalidBlockNumber ;
 int InvalidBuffer ;
 int LH_BUCKET_PAGE ;
 scalar_t__ PageGetSpecialPointer (int ) ;
 int _hash_dropbuf (int ,int ) ;
 int _hash_getbuf (int ,int ,int,int ) ;
 TYPE_2__* _hash_getcachedmetap (int ,int *,int) ;
 scalar_t__ _hash_hashkey2bucket (int ,scalar_t__,int ,int ) ;
 int _hash_relbuf (int ,int ) ;

Buffer
_hash_getbucketbuf_from_hashkey(Relation rel, uint32 hashkey, int access,
        HashMetaPage *cachedmetap)
{
 HashMetaPage metap;
 Buffer buf;
 Buffer metabuf = InvalidBuffer;
 Page page;
 Bucket bucket;
 BlockNumber blkno;
 HashPageOpaque opaque;


 Assert(access == HASH_READ || access == HASH_WRITE);

 metap = _hash_getcachedmetap(rel, &metabuf, 0);
 Assert(metap != ((void*)0));




 for (;;)
 {



  bucket = _hash_hashkey2bucket(hashkey,
           metap->hashm_maxbucket,
           metap->hashm_highmask,
           metap->hashm_lowmask);

  blkno = BUCKET_TO_BLKNO(metap, bucket);


  buf = _hash_getbuf(rel, blkno, access, LH_BUCKET_PAGE);
  page = BufferGetPage(buf);
  opaque = (HashPageOpaque) PageGetSpecialPointer(page);
  Assert(opaque->hasho_bucket == bucket);
  Assert(opaque->hasho_prevblkno != InvalidBlockNumber);




  if (opaque->hasho_prevblkno <= metap->hashm_maxbucket)
   break;


  _hash_relbuf(rel, buf);
  metap = _hash_getcachedmetap(rel, &metabuf, 1);
  Assert(metap != ((void*)0));
 }

 if (BufferIsValid(metabuf))
  _hash_dropbuf(rel, metabuf);

 if (cachedmetap)
  *cachedmetap = metap;

 return buf;
}
