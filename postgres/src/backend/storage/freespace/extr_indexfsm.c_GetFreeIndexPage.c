
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef scalar_t__ BlockNumber ;


 int BLCKSZ ;
 scalar_t__ GetPageWithFreeSpace (int ,int) ;
 scalar_t__ InvalidBlockNumber ;
 int RecordUsedIndexPage (int ,scalar_t__) ;

BlockNumber
GetFreeIndexPage(Relation rel)
{
 BlockNumber blkno = GetPageWithFreeSpace(rel, BLCKSZ / 2);

 if (blkno != InvalidBlockNumber)
  RecordUsedIndexPage(rel, blkno);

 return blkno;
}
