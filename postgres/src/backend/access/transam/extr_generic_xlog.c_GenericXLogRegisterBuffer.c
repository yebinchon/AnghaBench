
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* pages; } ;
struct TYPE_4__ {scalar_t__ buffer; int flags; int image; } ;
typedef TYPE_1__ PageData ;
typedef int * Page ;
typedef TYPE_2__ GenericXLogState ;
typedef scalar_t__ Buffer ;


 int BLCKSZ ;
 int BufferGetPage (scalar_t__) ;
 scalar_t__ BufferIsInvalid (scalar_t__) ;
 int ERROR ;
 int MAX_GENERIC_XLOG_PAGES ;
 int elog (int ,char*,int) ;
 int memcpy (int ,int ,int ) ;

Page
GenericXLogRegisterBuffer(GenericXLogState *state, Buffer buffer, int flags)
{
 int block_id;


 for (block_id = 0; block_id < MAX_GENERIC_XLOG_PAGES; block_id++)
 {
  PageData *page = &state->pages[block_id];

  if (BufferIsInvalid(page->buffer))
  {

   page->buffer = buffer;
   page->flags = flags;
   memcpy(page->image, BufferGetPage(buffer), BLCKSZ);
   return (Page) page->image;
  }
  else if (page->buffer == buffer)
  {




   return (Page) page->image;
  }
 }

 elog(ERROR, "maximum number %d of generic xlog buffers is exceeded",
   MAX_GENERIC_XLOG_PAGES);

 return ((void*)0);
}
