
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_5__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITMAPSET_SIZE (int) ;
 int BITNUM (int) ;
 int BITS_PER_BITMAPWORD ;
 int ERROR ;
 int WORDNUM (int) ;
 int elog (int ,char*) ;
 scalar_t__ palloc0 (int ) ;
 scalar_t__ repalloc (TYPE_1__*,int ) ;

Bitmapset *
bms_add_range(Bitmapset *a, int lower, int upper)
{
 int lwordnum,
    lbitnum,
    uwordnum,
    ushiftbits,
    wordnum;


 if (upper < lower)
  return a;

 if (lower < 0)
  elog(ERROR, "negative bitmapset member not allowed");
 uwordnum = WORDNUM(upper);

 if (a == ((void*)0))
 {
  a = (Bitmapset *) palloc0(BITMAPSET_SIZE(uwordnum + 1));
  a->nwords = uwordnum + 1;
 }
 else if (uwordnum >= a->nwords)
 {
  int oldnwords = a->nwords;
  int i;


  a = (Bitmapset *) repalloc(a, BITMAPSET_SIZE(uwordnum + 1));
  a->nwords = uwordnum + 1;

  for (i = oldnwords; i < a->nwords; i++)
   a->words[i] = 0;
 }

 wordnum = lwordnum = WORDNUM(lower);

 lbitnum = BITNUM(lower);
 ushiftbits = BITS_PER_BITMAPWORD - (BITNUM(upper) + 1);





 if (lwordnum == uwordnum)
 {
  a->words[lwordnum] |= ~(bitmapword) (((bitmapword) 1 << lbitnum) - 1)
   & (~(bitmapword) 0) >> ushiftbits;
 }
 else
 {

  a->words[wordnum++] |= ~(bitmapword) (((bitmapword) 1 << lbitnum) - 1);


  while (wordnum < uwordnum)
   a->words[wordnum++] = ~(bitmapword) 0;


  a->words[uwordnum] |= (~(bitmapword) 0) >> ushiftbits;
 }

 return a;
}
