
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int BufferAccessStrategy ;
typedef int Buffer ;
typedef scalar_t__ BlockNumber ;


 int CHECK_FOR_INTERRUPTS () ;
 int FreeSpaceMapVacuum (int ) ;
 int MAIN_FORKNUM ;
 int RBM_NORMAL ;
 int ReadBufferExtended (int ,int ,scalar_t__,int ,int ) ;
 scalar_t__ RelationGetNumberOfBlocks (int ) ;
 int ReleaseBuffer (int ) ;
 int brin_page_cleanup (int ,int ) ;

__attribute__((used)) static void
brin_vacuum_scan(Relation idxrel, BufferAccessStrategy strategy)
{
 BlockNumber nblocks;
 BlockNumber blkno;





 nblocks = RelationGetNumberOfBlocks(idxrel);
 for (blkno = 0; blkno < nblocks; blkno++)
 {
  Buffer buf;

  CHECK_FOR_INTERRUPTS();

  buf = ReadBufferExtended(idxrel, MAIN_FORKNUM, blkno,
         RBM_NORMAL, strategy);

  brin_page_cleanup(idxrel, buf);

  ReleaseBuffer(buf);
 }






 FreeSpaceMapVacuum(idxrel);
}
