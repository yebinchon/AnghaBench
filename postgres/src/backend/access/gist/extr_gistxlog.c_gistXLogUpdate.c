
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ntodelete; int ntoinsert; } ;
typedef TYPE_1__ gistxlogPageUpdate ;
typedef int XLogRecPtr ;
typedef int OffsetNumber ;
typedef scalar_t__ IndexTuple ;
typedef int Buffer ;


 scalar_t__ BufferIsValid (int ) ;
 int IndexTupleSize (scalar_t__) ;
 int REGBUF_STANDARD ;
 int RM_GIST_ID ;
 int XLOG_GIST_PAGE_UPDATE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBufData (int ,char*,int) ;
 int XLogRegisterBuffer (int,int ,int ) ;
 int XLogRegisterData (char*,int) ;

XLogRecPtr
gistXLogUpdate(Buffer buffer,
      OffsetNumber *todelete, int ntodelete,
      IndexTuple *itup, int ituplen,
      Buffer leftchildbuf)
{
 gistxlogPageUpdate xlrec;
 int i;
 XLogRecPtr recptr;

 xlrec.ntodelete = ntodelete;
 xlrec.ntoinsert = ituplen;

 XLogBeginInsert();
 XLogRegisterData((char *) &xlrec, sizeof(gistxlogPageUpdate));

 XLogRegisterBuffer(0, buffer, REGBUF_STANDARD);
 XLogRegisterBufData(0, (char *) todelete, sizeof(OffsetNumber) * ntodelete);


 for (i = 0; i < ituplen; i++)
  XLogRegisterBufData(0, (char *) (itup[i]), IndexTupleSize(itup[i]));





 if (BufferIsValid(leftchildbuf))
  XLogRegisterBuffer(1, leftchildbuf, REGBUF_STANDARD);

 recptr = XLogInsert(RM_GIST_ID, XLOG_GIST_PAGE_UPDATE);

 return recptr;
}
