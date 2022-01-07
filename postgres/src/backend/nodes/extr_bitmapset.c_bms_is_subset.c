
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;


 int Min (int,int) ;
 int bms_is_empty (TYPE_1__ const*) ;

bool
bms_is_subset(const Bitmapset *a, const Bitmapset *b)
{
 int shortlen;
 int longlen;
 int i;


 if (a == ((void*)0))
  return 1;
 if (b == ((void*)0))
  return bms_is_empty(a);

 shortlen = Min(a->nwords, b->nwords);
 for (i = 0; i < shortlen; i++)
 {
  if ((a->words[i] & ~b->words[i]) != 0)
   return 0;
 }

 if (a->nwords > b->nwords)
 {
  longlen = a->nwords;
  for (; i < longlen; i++)
  {
   if (a->words[i] != 0)
    return 0;
  }
 }
 return 1;
}
