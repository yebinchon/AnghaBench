
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt32 ;
typedef int CLzmaProb ;


 scalar_t__ GET_PRICEa (int const,int) ;

__attribute__((used)) static UInt32 LitEnc_GetPrice(const CLzmaProb *probs, UInt32 symbol, UInt32 *ProbPrices)
{
  UInt32 price = 0;
  symbol |= 0x100;
  do
  {
    price += GET_PRICEa(probs[symbol >> 8], (symbol >> 7) & 1);
    symbol <<= 1;
  }
  while (symbol < 0x10000);
  return price;
}
