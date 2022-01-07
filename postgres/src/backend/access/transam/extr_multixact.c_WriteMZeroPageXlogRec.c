
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int RM_MULTIXACT_ID ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterData (char*,int) ;

__attribute__((used)) static void
WriteMZeroPageXlogRec(int pageno, uint8 info)
{
 XLogBeginInsert();
 XLogRegisterData((char *) (&pageno), sizeof(int));
 (void) XLogInsert(RM_MULTIXACT_ID, info);
}
