
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ nwords; scalar_t__* words; } ;
typedef TYPE_1__ Bitmapset ;


 int bms_is_empty (TYPE_1__ const*) ;

bool
bms_equal(const Bitmapset *a, const Bitmapset *b)
{
 const Bitmapset *shorter;
 const Bitmapset *longer;
 int shortlen;
 int longlen;
 int i;


 if (a == ((void*)0))
 {
  if (b == ((void*)0))
   return 1;
  return bms_is_empty(b);
 }
 else if (b == ((void*)0))
  return bms_is_empty(a);

 if (a->nwords <= b->nwords)
 {
  shorter = a;
  longer = b;
 }
 else
 {
  shorter = b;
  longer = a;
 }

 shortlen = shorter->nwords;
 for (i = 0; i < shortlen; i++)
 {
  if (shorter->words[i] != longer->words[i])
   return 0;
 }
 longlen = longer->nwords;
 for (; i < longlen; i++)
 {
  if (longer->words[i] != 0)
   return 0;
 }
 return 1;
}
