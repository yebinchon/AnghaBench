
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int BlockNumber ;


 int PredicateLockPageSplit (int ,int ,int ) ;

void
PredicateLockPageCombine(Relation relation, BlockNumber oldblkno,
       BlockNumber newblkno)
{
 PredicateLockPageSplit(relation, oldblkno, newblkno);
}
