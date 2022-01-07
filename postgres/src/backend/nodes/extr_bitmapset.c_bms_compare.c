
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ bitmapword ;
struct TYPE_5__ {int nwords; scalar_t__* words; } ;
typedef TYPE_1__ Bitmapset ;


 int Min (int,int) ;
 scalar_t__ bms_is_empty (TYPE_1__ const*) ;

int
bms_compare(const Bitmapset *a, const Bitmapset *b)
{
 int shortlen;
 int i;


 if (a == ((void*)0))
  return bms_is_empty(b) ? 0 : -1;
 else if (b == ((void*)0))
  return bms_is_empty(a) ? 0 : +1;

 shortlen = Min(a->nwords, b->nwords);
 for (i = shortlen; i < a->nwords; i++)
 {
  if (a->words[i] != 0)
   return +1;
 }
 for (i = shortlen; i < b->nwords; i++)
 {
  if (b->words[i] != 0)
   return -1;
 }

 i = shortlen;
 while (--i >= 0)
 {
  bitmapword aw = a->words[i];
  bitmapword bw = b->words[i];

  if (aw != bw)
   return (aw > bw) ? +1 : -1;
 }
 return 0;
}
