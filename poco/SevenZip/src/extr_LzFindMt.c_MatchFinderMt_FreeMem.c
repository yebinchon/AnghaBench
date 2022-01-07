
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ hashBuf; } ;
struct TYPE_6__ {int (* Free ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CMatchFinderMt ;


 int stub1 (TYPE_1__*,scalar_t__) ;

void MatchFinderMt_FreeMem(CMatchFinderMt *p, ISzAlloc *alloc)
{
  alloc->Free(alloc, p->hashBuf);
  p->hashBuf = 0;
}
