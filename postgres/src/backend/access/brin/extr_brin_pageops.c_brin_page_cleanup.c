
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef int Buffer ;


 scalar_t__ BRIN_IS_META_PAGE (int ) ;
 scalar_t__ BRIN_IS_REVMAP_PAGE (int ) ;
 int BUFFER_LOCK_EXCLUSIVE ;
 int BUFFER_LOCK_UNLOCK ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int LockBuffer (int ,int ) ;
 int LockRelationForExtension (int ,int ) ;
 scalar_t__ PageIsNew (int ) ;
 int RecordPageWithFreeSpace (int ,int ,int ) ;
 int ShareLock ;
 int UnlockRelationForExtension (int ,int ) ;
 int br_page_get_freespace (int ) ;
 int brin_initialize_empty_new_buffer (int ,int ) ;

void
brin_page_cleanup(Relation idxrel, Buffer buf)
{
 Page page = BufferGetPage(buf);
 if (PageIsNew(page))
 {
  LockRelationForExtension(idxrel, ShareLock);
  UnlockRelationForExtension(idxrel, ShareLock);

  LockBuffer(buf, BUFFER_LOCK_EXCLUSIVE);
  if (PageIsNew(page))
  {
   brin_initialize_empty_new_buffer(idxrel, buf);
   LockBuffer(buf, BUFFER_LOCK_UNLOCK);
   return;
  }
  LockBuffer(buf, BUFFER_LOCK_UNLOCK);
 }


 if (BRIN_IS_META_PAGE(BufferGetPage(buf)) ||
  BRIN_IS_REVMAP_PAGE(BufferGetPage(buf)))
  return;


 RecordPageWithFreeSpace(idxrel, BufferGetBlockNumber(buf),
       br_page_get_freespace(page));
}
