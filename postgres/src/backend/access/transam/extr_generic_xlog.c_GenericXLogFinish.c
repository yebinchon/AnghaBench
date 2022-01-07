
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int XLogRecPtr ;
struct TYPE_9__ {TYPE_2__* pages; scalar_t__ isLogged; } ;
struct TYPE_8__ {int flags; int buffer; scalar_t__ image; int deltaLen; int delta; } ;
struct TYPE_7__ {scalar_t__ pd_upper; scalar_t__ pd_lower; } ;
typedef TYPE_1__* PageHeader ;
typedef TYPE_2__ PageData ;
typedef scalar_t__ Page ;
typedef TYPE_3__ GenericXLogState ;


 scalar_t__ BLCKSZ ;
 scalar_t__ BufferGetPage (int ) ;
 scalar_t__ BufferIsInvalid (int ) ;
 int END_CRIT_SECTION () ;
 int GENERIC_XLOG_FULL_IMAGE ;
 int InvalidXLogRecPtr ;
 int MAX_GENERIC_XLOG_PAGES ;
 int MarkBufferDirty (int ) ;
 int PageSetLSN (scalar_t__,int ) ;
 int REGBUF_FORCE_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_GENERIC_ID ;
 int START_CRIT_SECTION () ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,int ,int ) ;
 int XLogRegisterBuffer (int,int ,int) ;
 int computeDelta (TYPE_2__*,scalar_t__,scalar_t__) ;
 int memcpy (scalar_t__,scalar_t__,scalar_t__) ;
 int memset (scalar_t__,int ,scalar_t__) ;
 int pfree (TYPE_3__*) ;

XLogRecPtr
GenericXLogFinish(GenericXLogState *state)
{
 XLogRecPtr lsn;
 int i;

 if (state->isLogged)
 {

  XLogBeginInsert();

  START_CRIT_SECTION();

  for (i = 0; i < MAX_GENERIC_XLOG_PAGES; i++)
  {
   PageData *pageData = &state->pages[i];
   Page page;
   PageHeader pageHeader;

   if (BufferIsInvalid(pageData->buffer))
    continue;

   page = BufferGetPage(pageData->buffer);
   pageHeader = (PageHeader) pageData->image;

   if (pageData->flags & GENERIC_XLOG_FULL_IMAGE)
   {







    memcpy(page, pageData->image, pageHeader->pd_lower);
    memset(page + pageHeader->pd_lower, 0,
        pageHeader->pd_upper - pageHeader->pd_lower);
    memcpy(page + pageHeader->pd_upper,
        pageData->image + pageHeader->pd_upper,
        BLCKSZ - pageHeader->pd_upper);

    XLogRegisterBuffer(i, pageData->buffer,
           REGBUF_FORCE_IMAGE | REGBUF_STANDARD);
   }
   else
   {




    computeDelta(pageData, page, (Page) pageData->image);


    memcpy(page, pageData->image, pageHeader->pd_lower);
    memset(page + pageHeader->pd_lower, 0,
        pageHeader->pd_upper - pageHeader->pd_lower);
    memcpy(page + pageHeader->pd_upper,
        pageData->image + pageHeader->pd_upper,
        BLCKSZ - pageHeader->pd_upper);

    XLogRegisterBuffer(i, pageData->buffer, REGBUF_STANDARD);
    XLogRegisterBufData(i, pageData->delta, pageData->deltaLen);
   }
  }


  lsn = XLogInsert(RM_GENERIC_ID, 0);


  for (i = 0; i < MAX_GENERIC_XLOG_PAGES; i++)
  {
   PageData *pageData = &state->pages[i];

   if (BufferIsInvalid(pageData->buffer))
    continue;
   PageSetLSN(BufferGetPage(pageData->buffer), lsn);
   MarkBufferDirty(pageData->buffer);
  }
  END_CRIT_SECTION();
 }
 else
 {

  START_CRIT_SECTION();
  for (i = 0; i < MAX_GENERIC_XLOG_PAGES; i++)
  {
   PageData *pageData = &state->pages[i];

   if (BufferIsInvalid(pageData->buffer))
    continue;
   memcpy(BufferGetPage(pageData->buffer),
       pageData->image,
       BLCKSZ);

   MarkBufferDirty(pageData->buffer);
  }
  END_CRIT_SECTION();

  lsn = InvalidXLogRecPtr;
 }

 pfree(state);

 return lsn;
}
