
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ bitmapword ;
struct TYPE_3__ {int nwords; scalar_t__* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITS_PER_BITMAPWORD ;
 scalar_t__ HAS_MULTIPLE_ONES (scalar_t__) ;
 scalar_t__ bmw_rightmost_one_pos (scalar_t__) ;

bool
bms_get_singleton_member(const Bitmapset *a, int *member)
{
 int result = -1;
 int nwords;
 int wordnum;

 if (a == ((void*)0))
  return 0;
 nwords = a->nwords;
 for (wordnum = 0; wordnum < nwords; wordnum++)
 {
  bitmapword w = a->words[wordnum];

  if (w != 0)
  {
   if (result >= 0 || HAS_MULTIPLE_ONES(w))
    return 0;
   result = wordnum * BITS_PER_BITMAPWORD;
   result += bmw_rightmost_one_pos(w);
  }
 }
 if (result < 0)
  return 0;
 *member = result;
 return 1;
}
