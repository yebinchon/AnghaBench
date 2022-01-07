
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_4__ {scalar_t__ currTLI; int nextTLI; int currTLIValidUntil; } ;
typedef TYPE_1__ XLogReaderState ;


 scalar_t__ ThisTimeLineID ;
 scalar_t__ WalSndWaitForWal (scalar_t__) ;
 int XLOG_BLCKSZ ;
 int XLogRead (int ,char*,scalar_t__,int) ;
 int XLogReadDetermineTimeline (TYPE_1__*,scalar_t__,int) ;
 int sendCxt ;
 scalar_t__ sendTimeLine ;
 int sendTimeLineIsHistoric ;
 int sendTimeLineNextTLI ;
 int sendTimeLineValidUpto ;

__attribute__((used)) static int
logical_read_xlog_page(XLogReaderState *state, XLogRecPtr targetPagePtr, int reqLen,
        XLogRecPtr targetRecPtr, char *cur_page)
{
 XLogRecPtr flushptr;
 int count;

 XLogReadDetermineTimeline(state, targetPagePtr, reqLen);
 sendTimeLineIsHistoric = (state->currTLI != ThisTimeLineID);
 sendTimeLine = state->currTLI;
 sendTimeLineValidUpto = state->currTLIValidUntil;
 sendTimeLineNextTLI = state->nextTLI;


 flushptr = WalSndWaitForWal(targetPagePtr + reqLen);


 if (flushptr < targetPagePtr + reqLen)
  return -1;

 if (targetPagePtr + XLOG_BLCKSZ <= flushptr)
  count = XLOG_BLCKSZ;
 else
  count = flushptr - targetPagePtr;


 XLogRead(sendCxt, cur_page, targetPagePtr, XLOG_BLCKSZ);

 return count;
}
