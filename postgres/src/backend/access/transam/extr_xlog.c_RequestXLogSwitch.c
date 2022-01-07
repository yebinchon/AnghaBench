
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;


 int RM_XLOG_ID ;
 int XLOG_MARK_UNIMPORTANT ;
 int XLOG_SWITCH ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogSetRecordFlags (int ) ;

XLogRecPtr
RequestXLogSwitch(bool mark_unimportant)
{
 XLogRecPtr RecPtr;


 XLogBeginInsert();

 if (mark_unimportant)
  XLogSetRecordFlags(XLOG_MARK_UNIMPORTANT);
 RecPtr = XLogInsert(RM_XLOG_ID, XLOG_SWITCH);

 return RecPtr;
}
