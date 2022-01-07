
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ bitmapword ;
struct TYPE_3__ {int nwords; scalar_t__* words; } ;
typedef TYPE_1__ Bitmapset ;
typedef scalar_t__ BMS_Membership ;


 scalar_t__ BMS_EMPTY_SET ;
 scalar_t__ BMS_MULTIPLE ;
 scalar_t__ BMS_SINGLETON ;
 scalar_t__ HAS_MULTIPLE_ONES (scalar_t__) ;

BMS_Membership
bms_membership(const Bitmapset *a)
{
 BMS_Membership result = BMS_EMPTY_SET;
 int nwords;
 int wordnum;

 if (a == ((void*)0))
  return BMS_EMPTY_SET;
 nwords = a->nwords;
 for (wordnum = 0; wordnum < nwords; wordnum++)
 {
  bitmapword w = a->words[wordnum];

  if (w != 0)
  {
   if (result != BMS_EMPTY_SET || HAS_MULTIPLE_ONES(w))
    return BMS_MULTIPLE;
   result = BMS_SINGLETON;
  }
 }
 return result;
}
