
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ XLogRecPtr ;
struct TYPE_5__ {int ws_dir; } ;
struct TYPE_6__ {TYPE_1__ segcxt; TYPE_3__* private_data; } ;
typedef TYPE_2__ XLogReaderState ;
struct TYPE_7__ {scalar_t__ endptr; int endptr_reached; int timeline; } ;
typedef TYPE_3__ XLogDumpPrivate ;


 scalar_t__ InvalidXLogRecPtr ;
 int XLOG_BLCKSZ ;
 int XLogDumpXLogRead (int ,int ,scalar_t__,char*,int) ;

__attribute__((used)) static int
XLogDumpReadPage(XLogReaderState *state, XLogRecPtr targetPagePtr, int reqLen,
     XLogRecPtr targetPtr, char *readBuff)
{
 XLogDumpPrivate *private = state->private_data;
 int count = XLOG_BLCKSZ;

 if (private->endptr != InvalidXLogRecPtr)
 {
  if (targetPagePtr + XLOG_BLCKSZ <= private->endptr)
   count = XLOG_BLCKSZ;
  else if (targetPagePtr + reqLen <= private->endptr)
   count = private->endptr - targetPagePtr;
  else
  {
   private->endptr_reached = 1;
   return -1;
  }
 }

 XLogDumpXLogRead(state->segcxt.ws_dir, private->timeline, targetPagePtr,
      readBuff, count);

 return count;
}
