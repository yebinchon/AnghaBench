
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8 ;
typedef int XLogReaderState ;


 int PANIC ;
 scalar_t__ XLOG_LOGICAL_MESSAGE ;
 scalar_t__ XLR_INFO_MASK ;
 scalar_t__ XLogRecGetInfo (int *) ;
 int elog (int ,char*,scalar_t__) ;

void
logicalmsg_redo(XLogReaderState *record)
{
 uint8 info = XLogRecGetInfo(record) & ~XLR_INFO_MASK;

 if (info != XLOG_LOGICAL_MESSAGE)
  elog(PANIC, "logicalmsg_redo: unknown op code %u", info);


}
