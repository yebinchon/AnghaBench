
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Relation ;
typedef int HashMetaPage ;
typedef int Buffer ;
typedef int Bucket ;
typedef int BlockNumber ;


 int BUCKET_TO_BLKNO (int ,int) ;
 int BufferGetPage (int ) ;
 int HASH_METAPAGE ;
 int HASH_READ ;
 int HashPageGetMeta (int ) ;
 int LH_META_PAGE ;
 int _hash_getbuf (int ,int ,int ,int ) ;
 int _hash_relbuf (int ,int ) ;
 int fls (int) ;

BlockNumber
_hash_get_oldblock_from_newbucket(Relation rel, Bucket new_bucket)
{
 Bucket old_bucket;
 uint32 mask;
 Buffer metabuf;
 HashMetaPage metap;
 BlockNumber blkno;
 mask = (((uint32) 1) << (fls(new_bucket) - 1)) - 1;
 old_bucket = new_bucket & mask;

 metabuf = _hash_getbuf(rel, HASH_METAPAGE, HASH_READ, LH_META_PAGE);
 metap = HashPageGetMeta(BufferGetPage(metabuf));

 blkno = BUCKET_TO_BLKNO(metap, old_bucket);

 _hash_relbuf(rel, metabuf);

 return blkno;
}
