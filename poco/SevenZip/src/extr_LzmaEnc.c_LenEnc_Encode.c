
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_3__ {scalar_t__ high; int choice2; scalar_t__ mid; int choice; scalar_t__ low; } ;
typedef int CRangeEnc ;
typedef TYPE_1__ CLenEnc ;


 int RangeEnc_EncodeBit (int *,int *,int) ;
 int RcTree_Encode (int *,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ kLenNumHighBits ;
 scalar_t__ kLenNumLowBits ;
 scalar_t__ kLenNumLowSymbols ;
 scalar_t__ kLenNumMidBits ;
 scalar_t__ kLenNumMidSymbols ;

__attribute__((used)) static void LenEnc_Encode(CLenEnc *p, CRangeEnc *rc, UInt32 symbol, UInt32 posState)
{
  if (symbol < kLenNumLowSymbols)
  {
    RangeEnc_EncodeBit(rc, &p->choice, 0);
    RcTree_Encode(rc, p->low + (posState << kLenNumLowBits), kLenNumLowBits, symbol);
  }
  else
  {
    RangeEnc_EncodeBit(rc, &p->choice, 1);
    if (symbol < kLenNumLowSymbols + kLenNumMidSymbols)
    {
      RangeEnc_EncodeBit(rc, &p->choice2, 0);
      RcTree_Encode(rc, p->mid + (posState << kLenNumMidBits), kLenNumMidBits, symbol - kLenNumLowSymbols);
    }
    else
    {
      RangeEnc_EncodeBit(rc, &p->choice2, 1);
      RcTree_Encode(rc, p->high, kLenNumHighBits, symbol - kLenNumLowSymbols - kLenNumMidSymbols);
    }
  }
}
