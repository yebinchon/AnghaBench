
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XLogRecPtr ;
typedef scalar_t__ TimeLineID ;


 scalar_t__ GetWalRcvWriteRecPtr (int *,scalar_t__*) ;
 scalar_t__ GetXLogReplayRecPtr (scalar_t__*) ;
 scalar_t__ ThisTimeLineID ;

__attribute__((used)) static XLogRecPtr
GetStandbyFlushRecPtr(void)
{
 XLogRecPtr replayPtr;
 TimeLineID replayTLI;
 XLogRecPtr receivePtr;
 TimeLineID receiveTLI;
 XLogRecPtr result;







 receivePtr = GetWalRcvWriteRecPtr(((void*)0), &receiveTLI);
 replayPtr = GetXLogReplayRecPtr(&replayTLI);

 ThisTimeLineID = replayTLI;

 result = replayPtr;
 if (receiveTLI == ThisTimeLineID && receivePtr > replayPtr)
  result = receivePtr;

 return result;
}
