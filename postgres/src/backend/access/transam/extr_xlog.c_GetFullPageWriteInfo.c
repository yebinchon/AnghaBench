
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;


 int RedoRecPtr ;
 int doPageWrites ;

void
GetFullPageWriteInfo(XLogRecPtr *RedoRecPtr_p, bool *doPageWrites_p)
{
 *RedoRecPtr_p = RedoRecPtr;
 *doPageWrites_p = doPageWrites;
}
