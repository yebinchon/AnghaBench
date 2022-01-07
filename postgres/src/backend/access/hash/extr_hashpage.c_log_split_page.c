
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XLogRecPtr ;
typedef int Relation ;
typedef int Buffer ;


 int BufferGetPage (int ) ;
 int PageSetLSN (int ,int ) ;
 int REGBUF_FORCE_IMAGE ;
 int REGBUF_STANDARD ;
 int RM_HASH_ID ;
 scalar_t__ RelationNeedsWAL (int ) ;
 int XLOG_HASH_SPLIT_PAGE ;
 int XLogBeginInsert () ;
 int XLogInsert (int ,int ) ;
 int XLogRegisterBuffer (int ,int ,int) ;

__attribute__((used)) static void
log_split_page(Relation rel, Buffer buf)
{
 if (RelationNeedsWAL(rel))
 {
  XLogRecPtr recptr;

  XLogBeginInsert();

  XLogRegisterBuffer(0, buf, REGBUF_FORCE_IMAGE | REGBUF_STANDARD);

  recptr = XLogInsert(RM_HASH_ID, XLOG_HASH_SPLIT_PAGE);

  PageSetLSN(BufferGetPage(buf), recptr);
 }
}
