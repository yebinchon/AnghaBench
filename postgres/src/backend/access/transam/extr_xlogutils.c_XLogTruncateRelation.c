
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelFileNode ;
typedef int ForkNumber ;
typedef int BlockNumber ;


 int forget_invalid_pages (int ,int ,int ) ;

void
XLogTruncateRelation(RelFileNode rnode, ForkNumber forkNum,
      BlockNumber nblocks)
{
 forget_invalid_pages(rnode, forkNum, nblocks);
}
