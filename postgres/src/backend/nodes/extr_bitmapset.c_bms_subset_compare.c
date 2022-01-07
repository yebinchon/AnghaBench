
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_5__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;
typedef scalar_t__ BMS_Comparison ;


 scalar_t__ BMS_DIFFERENT ;
 scalar_t__ BMS_EQUAL ;
 scalar_t__ BMS_SUBSET1 ;
 scalar_t__ BMS_SUBSET2 ;
 int Min (int,int) ;
 scalar_t__ bms_is_empty (TYPE_1__ const*) ;

BMS_Comparison
bms_subset_compare(const Bitmapset *a, const Bitmapset *b)
{
 BMS_Comparison result;
 int shortlen;
 int longlen;
 int i;


 if (a == ((void*)0))
 {
  if (b == ((void*)0))
   return BMS_EQUAL;
  return bms_is_empty(b) ? BMS_EQUAL : BMS_SUBSET1;
 }
 if (b == ((void*)0))
  return bms_is_empty(a) ? BMS_EQUAL : BMS_SUBSET2;

 result = BMS_EQUAL;
 shortlen = Min(a->nwords, b->nwords);
 for (i = 0; i < shortlen; i++)
 {
  bitmapword aword = a->words[i];
  bitmapword bword = b->words[i];

  if ((aword & ~bword) != 0)
  {

   if (result == BMS_SUBSET1)
    return BMS_DIFFERENT;
   result = BMS_SUBSET2;
  }
  if ((bword & ~aword) != 0)
  {

   if (result == BMS_SUBSET2)
    return BMS_DIFFERENT;
   result = BMS_SUBSET1;
  }
 }

 if (a->nwords > b->nwords)
 {
  longlen = a->nwords;
  for (; i < longlen; i++)
  {
   if (a->words[i] != 0)
   {

    if (result == BMS_SUBSET1)
     return BMS_DIFFERENT;
    result = BMS_SUBSET2;
   }
  }
 }
 else if (a->nwords < b->nwords)
 {
  longlen = b->nwords;
  for (; i < longlen; i++)
  {
   if (b->words[i] != 0)
   {

    if (result == BMS_SUBSET2)
     return BMS_DIFFERENT;
    result = BMS_SUBSET1;
   }
  }
 }
 return result;
}
