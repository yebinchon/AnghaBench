
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;


 int RM_XLOG_ID ;
 int XLOG_NEXTOID ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;

void
XLogPutNextOid(Oid nextOid)
{
 XLogBeginInsert();
 XLogRegisterData((char *) (&nextOid), sizeof(Oid));
 (void) XLogInsert(RM_XLOG_ID, XLOG_NEXTOID);
}
