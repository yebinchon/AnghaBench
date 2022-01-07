
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Page ;
typedef int Buffer ;


 int BRIN_PAGETYPE_REGULAR ;
 int BRIN_elog (int ) ;
 int BufferGetBlockNumber (int ) ;
 int BufferGetPage (int ) ;
 int DEBUG2 ;
 int END_CRIT_SECTION () ;
 int MarkBufferDirty (int ) ;
 int RecordPageWithFreeSpace (int ,int ,int ) ;
 int START_CRIT_SECTION () ;
 int br_page_get_freespace (int ) ;
 int brin_page_init (int ,int ) ;
 int log_newpage_buffer (int ,int) ;

__attribute__((used)) static void
brin_initialize_empty_new_buffer(Relation idxrel, Buffer buffer)
{
 Page page;

 BRIN_elog((DEBUG2,
      "brin_initialize_empty_new_buffer: initializing blank page %u",
      BufferGetBlockNumber(buffer)));

 START_CRIT_SECTION();
 page = BufferGetPage(buffer);
 brin_page_init(page, BRIN_PAGETYPE_REGULAR);
 MarkBufferDirty(buffer);
 log_newpage_buffer(buffer, 1);
 END_CRIT_SECTION();






 RecordPageWithFreeSpace(idxrel, BufferGetBlockNumber(buffer),
       br_page_get_freespace(page));
}
