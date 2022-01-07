
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TimestampTz ;


 int Assert (int ) ;
 int InRecovery ;
 scalar_t__ XLOG_FROM_STREAM ;
 scalar_t__ XLogReceiptSource ;
 int XLogReceiptTime ;

void
GetXLogReceiptTime(TimestampTz *rtime, bool *fromStream)
{




 Assert(InRecovery);

 *rtime = XLogReceiptTime;
 *fromStream = (XLogReceiptSource == XLOG_FROM_STREAM);
}
