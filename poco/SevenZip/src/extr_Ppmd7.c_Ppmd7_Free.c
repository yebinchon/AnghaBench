
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ Base; scalar_t__ Size; } ;
struct TYPE_6__ {int (* Free ) (TYPE_1__*,scalar_t__) ;} ;
typedef TYPE_1__ ISzAlloc ;
typedef TYPE_2__ CPpmd7 ;


 int stub1 (TYPE_1__*,scalar_t__) ;

void Ppmd7_Free(CPpmd7 *p, ISzAlloc *alloc)
{
  alloc->Free(alloc, p->Base);
  p->Size = 0;
  p->Base = 0;
}
