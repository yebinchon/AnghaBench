
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int len; scalar_t__ pos; } ;
typedef TYPE_1__ WordEntry ;
struct TYPE_8__ {int size; } ;
typedef TYPE_2__* TSVector ;


 TYPE_1__* ARRPTR (TYPE_2__* const) ;
 scalar_t__ STRPTR (TYPE_2__* const) ;
 int tsCompareString (char*,int,scalar_t__,int ,int) ;

__attribute__((used)) static int
tsvector_bsearch(const TSVector tsv, char *lexeme, int lexeme_len)
{
 WordEntry *arrin = ARRPTR(tsv);
 int StopLow = 0,
    StopHigh = tsv->size,
    StopMiddle,
    cmp;

 while (StopLow < StopHigh)
 {
  StopMiddle = (StopLow + StopHigh) / 2;

  cmp = tsCompareString(lexeme, lexeme_len,
         STRPTR(tsv) + arrin[StopMiddle].pos,
         arrin[StopMiddle].len,
         0);

  if (cmp < 0)
   StopHigh = StopMiddle;
  else if (cmp > 0)
   StopLow = StopMiddle + 1;
  else
   return StopMiddle;
 }

 return -1;
}
