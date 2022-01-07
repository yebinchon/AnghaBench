
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMIT_TS_ZEROPAGE ;
 int RM_COMMIT_TS_ID ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;

__attribute__((used)) static void
WriteZeroPageXlogRec(int pageno)
{
 XLogBeginInsert();
 XLogRegisterData((char *) (&pageno), sizeof(int));
 (void) XLogInsert(RM_COMMIT_TS_ID, COMMIT_TS_ZEROPAGE);
}
