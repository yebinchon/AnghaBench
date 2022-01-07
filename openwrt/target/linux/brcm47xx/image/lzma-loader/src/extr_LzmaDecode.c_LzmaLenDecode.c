
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CRangeDecoder ;
typedef int CProb ;


 int LenChoice ;
 int LenChoice2 ;
 int LenHigh ;
 int LenLow ;
 int LenMid ;
 scalar_t__ RangeDecoderBitDecode (int *,int *) ;
 int RangeDecoderBitTreeDecode (int *,int,int *) ;
 int kLenNumHighBits ;
 int kLenNumLowBits ;
 int kLenNumLowSymbols ;
 int kLenNumMidBits ;
 int kLenNumMidSymbols ;

int LzmaLenDecode(CProb *p, CRangeDecoder *rd, int posState)
{
  if(RangeDecoderBitDecode(p + LenChoice, rd) == 0)
    return RangeDecoderBitTreeDecode(p + LenLow +
        (posState << kLenNumLowBits), kLenNumLowBits, rd);
  if(RangeDecoderBitDecode(p + LenChoice2, rd) == 0)
    return kLenNumLowSymbols + RangeDecoderBitTreeDecode(p + LenMid +
        (posState << kLenNumMidBits), kLenNumMidBits, rd);
  return kLenNumLowSymbols + kLenNumMidSymbols +
      RangeDecoderBitTreeDecode(p + LenHigh, kLenNumHighBits, rd);
}
