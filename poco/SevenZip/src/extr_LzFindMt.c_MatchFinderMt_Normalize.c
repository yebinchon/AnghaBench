
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ historySize; scalar_t__ lzPos; int fixedHashSize; int hash; } ;
typedef TYPE_1__ CMatchFinderMt ;


 int MatchFinder_Normalize3 (scalar_t__,int ,int ) ;

void MatchFinderMt_Normalize(CMatchFinderMt *p)
{
  MatchFinder_Normalize3(p->lzPos - p->historySize - 1, p->hash, p->fixedHashSize);
  p->lzPos = p->historySize + 1;
}
