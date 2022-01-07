
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int BlockNumber ;


 scalar_t__ BLCKSZ ;
 int RecordPageWithFreeSpace (int ,int ,scalar_t__) ;

void
RecordFreeIndexPage(Relation rel, BlockNumber freeBlock)
{
 RecordPageWithFreeSpace(rel, freeBlock, BLCKSZ - 1);
}
