
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* rd_amcache; int rd_indexcxt; } ;
typedef TYPE_1__* Relation ;
typedef int Page ;
typedef int HashMetaPageData ;
typedef int HashMetaPage ;
typedef int Buffer ;


 int Assert (int *) ;
 int BUFFER_LOCK_SHARE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetPage (int ) ;
 scalar_t__ BufferIsValid (int ) ;
 int HASH_METAPAGE ;
 int HASH_READ ;
 int HashPageGetMeta (int ) ;
 int LH_META_PAGE ;
 int LockBuffer (int ,int ) ;
 char* MemoryContextAlloc (int ,int) ;
 int _hash_getbuf (TYPE_1__*,int ,int ,int ) ;
 int memcpy (char*,int ,int) ;

HashMetaPage
_hash_getcachedmetap(Relation rel, Buffer *metabuf, bool force_refresh)
{
 Page page;

 Assert(metabuf);
 if (force_refresh || rel->rd_amcache == ((void*)0))
 {
  char *cache = ((void*)0);







  if (rel->rd_amcache == ((void*)0))
   cache = MemoryContextAlloc(rel->rd_indexcxt,
            sizeof(HashMetaPageData));


  if (BufferIsValid(*metabuf))
   LockBuffer(*metabuf, BUFFER_LOCK_SHARE);
  else
   *metabuf = _hash_getbuf(rel, HASH_METAPAGE, HASH_READ,
         LH_META_PAGE);
  page = BufferGetPage(*metabuf);


  if (rel->rd_amcache == ((void*)0))
   rel->rd_amcache = cache;
  memcpy(rel->rd_amcache, HashPageGetMeta(page),
      sizeof(HashMetaPageData));


  LockBuffer(*metabuf, BUFFER_LOCK_UNLOCK);
 }

 return (HashMetaPage) rel->rd_amcache;
}
