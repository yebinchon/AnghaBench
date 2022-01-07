
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RelFileNodeBackend ;
typedef scalar_t__ ForkNumber ;


 scalar_t__ InvalidForkNumber ;
 scalar_t__ MAX_FORKNUM ;
 int mdunlinkfork (int ,scalar_t__,int) ;

void
mdunlink(RelFileNodeBackend rnode, ForkNumber forkNum, bool isRedo)
{

 if (forkNum == InvalidForkNumber)
 {
  for (forkNum = 0; forkNum <= MAX_FORKNUM; forkNum++)
   mdunlinkfork(rnode, forkNum, isRedo);
 }
 else
  mdunlinkfork(rnode, forkNum, isRedo);
}
