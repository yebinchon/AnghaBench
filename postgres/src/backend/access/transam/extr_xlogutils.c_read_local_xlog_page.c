
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_7__ {scalar_t__ ws_tli; } ;
struct TYPE_6__ {int ws_segsize; } ;
struct TYPE_8__ {scalar_t__ currTLI; scalar_t__ currTLIValidUntil; TYPE_2__ seg; TYPE_1__ segcxt; } ;
typedef TYPE_3__ XLogReaderState ;


 int CHECK_FOR_INTERRUPTS () ;
 scalar_t__ GetFlushRecPtr () ;
 scalar_t__ GetXLogReplayRecPtr (scalar_t__*) ;
 int RecoveryInProgress () ;
 scalar_t__ ThisTimeLineID ;
 int XLOG_BLCKSZ ;
 int XLogRead (char*,int ,scalar_t__,scalar_t__,int) ;
 int XLogReadDetermineTimeline (TYPE_3__*,scalar_t__,int) ;
 int pg_usleep (long) ;

int
read_local_xlog_page(XLogReaderState *state, XLogRecPtr targetPagePtr,
      int reqLen, XLogRecPtr targetRecPtr, char *cur_page)
{
 XLogRecPtr read_upto,
    loc;
 int count;

 loc = targetPagePtr + reqLen;


 while (1)
 {
  if (!RecoveryInProgress())
   read_upto = GetFlushRecPtr();
  else
   read_upto = GetXLogReplayRecPtr(&ThisTimeLineID);
  state->seg.ws_tli = ThisTimeLineID;
  XLogReadDetermineTimeline(state, targetPagePtr, reqLen);

  if (state->currTLI == ThisTimeLineID)
  {

   if (loc <= read_upto)
    break;

   CHECK_FOR_INTERRUPTS();
   pg_usleep(1000L);
  }
  else
  {
   read_upto = state->currTLIValidUntil;
   state->seg.ws_tli = state->currTLI;


   break;
  }
 }

 if (targetPagePtr + XLOG_BLCKSZ <= read_upto)
 {




  count = XLOG_BLCKSZ;
 }
 else if (targetPagePtr + reqLen > read_upto)
 {

  return -1;
 }
 else
 {

  count = read_upto - targetPagePtr;
 }






 XLogRead(cur_page, state->segcxt.ws_segsize, state->seg.ws_tli, targetPagePtr,
    XLOG_BLCKSZ);


 return count;
}
