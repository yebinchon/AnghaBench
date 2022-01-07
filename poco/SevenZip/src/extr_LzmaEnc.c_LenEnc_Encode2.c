
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UInt32 ;
struct TYPE_4__ {scalar_t__* counters; int p; } ;
typedef int CRangeEnc ;
typedef TYPE_1__ CLenPriceEnc ;
typedef scalar_t__ Bool ;


 int LenEnc_Encode (int *,int *,size_t,size_t) ;
 int LenPriceEnc_UpdateTable (TYPE_1__*,size_t,size_t*) ;

__attribute__((used)) static void LenEnc_Encode2(CLenPriceEnc *p, CRangeEnc *rc, UInt32 symbol, UInt32 posState, Bool updatePrice, UInt32 *ProbPrices)
{
  LenEnc_Encode(&p->p, rc, symbol, posState);
  if (updatePrice)
    if (--p->counters[posState] == 0)
      LenPriceEnc_UpdateTable(p, posState, ProbPrices);
}
