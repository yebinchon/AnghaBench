
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_3__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITNUM (int) ;
 int BITS_PER_BITMAPWORD ;
 int WORDNUM (int) ;
 scalar_t__ bmw_leftmost_one_pos (int) ;

int
bms_prev_member(const Bitmapset *a, int prevbit)
{
 int wordnum;
 int ushiftbits;
 bitmapword mask;





 if (a == ((void*)0) || prevbit == 0)
  return -2;


 if (prevbit == -1)
  prevbit = a->nwords * BITS_PER_BITMAPWORD - 1;
 else
  prevbit--;

 ushiftbits = BITS_PER_BITMAPWORD - (BITNUM(prevbit) + 1);
 mask = (~(bitmapword) 0) >> ushiftbits;
 for (wordnum = WORDNUM(prevbit); wordnum >= 0; wordnum--)
 {
  bitmapword w = a->words[wordnum];


  w &= mask;

  if (w != 0)
  {
   int result;

   result = wordnum * BITS_PER_BITMAPWORD;
   result += bmw_leftmost_one_pos(w);
   return result;
  }


  mask = (~(bitmapword) 0);
 }
 return -2;
}
