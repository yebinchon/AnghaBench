
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLOG_ZEROPAGE ;
 int RM_CLOG_ID ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;

__attribute__((used)) static void
WriteZeroPageXlogRec(int pageno)
{
 XLogBeginInsert();
 XLogRegisterData((char *) (&pageno), sizeof(int));
 (void) XLogInsert(RM_CLOG_ID, CLOG_ZEROPAGE);
}
