
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_3__ {int nwords; int * words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITS_PER_BITMAPWORD ;
 int RIGHTMOST_ONE (int ) ;
 scalar_t__ bmw_rightmost_one_pos (int ) ;

int
bms_first_member(Bitmapset *a)
{
 int nwords;
 int wordnum;

 if (a == ((void*)0))
  return -1;
 nwords = a->nwords;
 for (wordnum = 0; wordnum < nwords; wordnum++)
 {
  bitmapword w = a->words[wordnum];

  if (w != 0)
  {
   int result;

   w = RIGHTMOST_ONE(w);
   a->words[wordnum] &= ~w;

   result = wordnum * BITS_PER_BITMAPWORD;
   result += bmw_rightmost_one_pos(w);
   return result;
  }
 }
 return -1;
}
