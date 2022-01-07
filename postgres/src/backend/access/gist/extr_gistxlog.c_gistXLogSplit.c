
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16 ;
struct TYPE_6__ {int origleaf; int markfollowright; int npage; int orignsn; int origrlink; } ;
typedef TYPE_2__ gistxlogPageSplit ;
typedef int XLogRecPtr ;
struct TYPE_5__ {int num; } ;
struct TYPE_7__ {int lenlist; scalar_t__ list; TYPE_1__ block; int buffer; struct TYPE_7__* next; } ;
typedef TYPE_3__ SplitedPageLayout ;
typedef int GistNSN ;
typedef int Buffer ;
typedef int BlockNumber ;


 scalar_t__ BufferIsValid (int ) ;
 int REGBUF_STANDARD ;
 int REGBUF_WILL_INIT ;
 int RM_GIST_ID ;
 int XLOG_GIST_PAGE_SPLIT ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int,char*,int) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int) ;

XLogRecPtr
gistXLogSplit(bool page_is_leaf,
     SplitedPageLayout *dist,
     BlockNumber origrlink, GistNSN orignsn,
     Buffer leftchildbuf, bool markfollowright)
{
 gistxlogPageSplit xlrec;
 SplitedPageLayout *ptr;
 int npage = 0;
 XLogRecPtr recptr;
 int i;

 for (ptr = dist; ptr; ptr = ptr->next)
  npage++;

 xlrec.origrlink = origrlink;
 xlrec.orignsn = orignsn;
 xlrec.origleaf = page_is_leaf;
 xlrec.npage = (uint16) npage;
 xlrec.markfollowright = markfollowright;

 XLogBeginInsert();





 if (BufferIsValid(leftchildbuf))
  XLogRegisterBuffer(0, leftchildbuf, REGBUF_STANDARD);
 XLogRegisterData((char *) &xlrec, sizeof(gistxlogPageSplit));

 i = 1;
 for (ptr = dist; ptr; ptr = ptr->next)
 {
  XLogRegisterBuffer(i, ptr->buffer, REGBUF_WILL_INIT);
  XLogRegisterBufData(i, (char *) &(ptr->block.num), sizeof(int));
  XLogRegisterBufData(i, (char *) ptr->list, ptr->lenlist);
  i++;
 }

 recptr = XLogInsert(RM_GIST_ID, XLOG_GIST_PAGE_SPLIT);

 return recptr;
}
