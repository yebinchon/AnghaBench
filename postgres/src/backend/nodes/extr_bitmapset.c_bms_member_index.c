
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ bitmapword ;
struct TYPE_4__ {scalar_t__* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITNUM (int) ;
 int WORDNUM (int) ;
 int bms_is_member (int,TYPE_1__*) ;
 scalar_t__ bmw_popcount (scalar_t__) ;

int
bms_member_index(Bitmapset *a, int x)
{
 int i;
 int bitnum;
 int wordnum;
 int result = 0;
 bitmapword mask;


 if (!bms_is_member(x, a))
  return -1;

 wordnum = WORDNUM(x);
 bitnum = BITNUM(x);


 for (i = 0; i < wordnum; i++)
 {
  bitmapword w = a->words[i];


  if (w != 0)
   result += bmw_popcount(w);
 }







 mask = ((bitmapword) 1 << bitnum) - 1;
 result += bmw_popcount(a->words[wordnum] & mask);

 return result;
}
