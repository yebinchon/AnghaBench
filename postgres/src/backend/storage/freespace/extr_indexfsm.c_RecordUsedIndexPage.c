
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int BlockNumber ;


 int RecordPageWithFreeSpace (int ,int ,int ) ;

void
RecordUsedIndexPage(Relation rel, BlockNumber usedBlock)
{
 RecordPageWithFreeSpace(rel, usedBlock, 0);
}
