
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
typedef int WordEntry ;
struct TYPE_4__ {scalar_t__ prefix; } ;
typedef int TSVector ;
typedef int TSQuery ;
typedef TYPE_1__ QueryOperand ;


 int * ARRPTR (int ) ;
 int GETOPERAND (int ) ;
 scalar_t__ STRPTR (int ) ;
 int WordECompareQueryItem (scalar_t__,int ,int *,TYPE_1__*,int) ;

__attribute__((used)) static WordEntry *
find_wordentry(TSVector t, TSQuery q, QueryOperand *item, int32 *nitem)
{
 WordEntry *StopLow = ARRPTR(t);
 WordEntry *StopHigh = (WordEntry *) STRPTR(t);
 WordEntry *StopMiddle = StopHigh;
 int difference;

 *nitem = 0;


 while (StopLow < StopHigh)
 {
  StopMiddle = StopLow + (StopHigh - StopLow) / 2;
  difference = WordECompareQueryItem(STRPTR(t), GETOPERAND(q), StopMiddle, item, 0);
  if (difference == 0)
  {
   StopHigh = StopMiddle;
   *nitem = 1;
   break;
  }
  else if (difference > 0)
   StopLow = StopMiddle + 1;
  else
   StopHigh = StopMiddle;
 }

 if (item->prefix)
 {
  if (StopLow >= StopHigh)
   StopMiddle = StopHigh;

  *nitem = 0;

  while (StopMiddle < (WordEntry *) STRPTR(t) &&
      WordECompareQueryItem(STRPTR(t), GETOPERAND(q), StopMiddle, item, 1) == 0)
  {
   (*nitem)++;
   StopMiddle++;
  }
 }

 return (*nitem > 0) ? StopHigh : ((void*)0);
}
