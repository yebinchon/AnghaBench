
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XLogRecPtr ;


 int DEBUG1 ;
 int LOG ;
 scalar_t__ XLOG_FROM_PG_WAL ;
 scalar_t__ readSource ;

__attribute__((used)) static int
emode_for_corrupt_record(int emode, XLogRecPtr RecPtr)
{
 static XLogRecPtr lastComplaint = 0;

 if (readSource == XLOG_FROM_PG_WAL && emode == LOG)
 {
  if (RecPtr == lastComplaint)
   emode = DEBUG1;
  else
   lastComplaint = RecPtr;
 }
 return emode;
}
