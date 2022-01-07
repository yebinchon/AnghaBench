
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ bitmapword ;
struct TYPE_3__ {int nwords; scalar_t__* words; } ;
typedef TYPE_1__ Bitmapset ;


 scalar_t__ bmw_popcount (scalar_t__) ;

int
bms_num_members(const Bitmapset *a)
{
 int result = 0;
 int nwords;
 int wordnum;

 if (a == ((void*)0))
  return 0;
 nwords = a->nwords;
 for (wordnum = 0; wordnum < nwords; wordnum++)
 {
  bitmapword w = a->words[wordnum];


  if (w != 0)
   result += bmw_popcount(w);
 }
 return result;
}
