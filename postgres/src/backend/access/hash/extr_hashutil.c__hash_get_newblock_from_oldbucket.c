
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hashm_maxbucket; int hashm_lowmask; } ;
typedef int Relation ;
typedef TYPE_1__* HashMetaPage ;
typedef int Buffer ;
typedef int Bucket ;
typedef int BlockNumber ;


 int BUCKET_TO_BLKNO (TYPE_1__*,int ) ;
 int BufferGetPage (int ) ;
 int HASH_METAPAGE ;
 int HASH_READ ;
 TYPE_1__* HashPageGetMeta (int ) ;
 int LH_META_PAGE ;
 int _hash_get_newbucket_from_oldbucket (int ,int ,int ,int ) ;
 int _hash_getbuf (int ,int ,int ,int ) ;
 int _hash_relbuf (int ,int ) ;

BlockNumber
_hash_get_newblock_from_oldbucket(Relation rel, Bucket old_bucket)
{
 Bucket new_bucket;
 Buffer metabuf;
 HashMetaPage metap;
 BlockNumber blkno;

 metabuf = _hash_getbuf(rel, HASH_METAPAGE, HASH_READ, LH_META_PAGE);
 metap = HashPageGetMeta(BufferGetPage(metabuf));

 new_bucket = _hash_get_newbucket_from_oldbucket(rel, old_bucket,
             metap->hashm_lowmask,
             metap->hashm_maxbucket);
 blkno = BUCKET_TO_BLKNO(metap, new_bucket);

 _hash_relbuf(rel, metabuf);

 return blkno;
}
