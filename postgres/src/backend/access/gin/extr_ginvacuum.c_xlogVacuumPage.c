
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int Relation ;
typedef int Page ;
typedef int Buffer ;


 int Assert (int) ;
 int BufferGetPage (int ) ;
 int GinPageIsData (int ) ;
 int GinPageIsLeaf (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_FORCE_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_GIN_ID ;
 int RelationNeedsWAL (int ) ;
 int XLOG_GIN_VACUUM_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int) ;

__attribute__((used)) static void
xlogVacuumPage(Relation index, Buffer buffer)
{
 Page page = BufferGetPage(buffer);
 XLogRecPtr recptr;


 Assert(!GinPageIsData(page));
 Assert(GinPageIsLeaf(page));

 if (!RelationNeedsWAL(index))
  return;





 XLogBeginInsert();
 XLogRegisterBuffer(0, buffer, REGBUF_FORCE_IMAGE | REGBUF_STANDARD);

 recptr = XLogInsert(RM_GIN_ID, XLOG_GIN_VACUUM_PAGE);
 PageSetLSN(page, recptr);
}
