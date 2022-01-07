
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nwords; int * words; } ;
typedef TYPE_1__ Bitmapset ;


 TYPE_1__* bms_copy (TYPE_1__ const*) ;

Bitmapset *
bms_intersect(const Bitmapset *a, const Bitmapset *b)
{
 Bitmapset *result;
 const Bitmapset *other;
 int resultlen;
 int i;


 if (a == ((void*)0) || b == ((void*)0))
  return ((void*)0);

 if (a->nwords <= b->nwords)
 {
  result = bms_copy(a);
  other = b;
 }
 else
 {
  result = bms_copy(b);
  other = a;
 }

 resultlen = result->nwords;
 for (i = 0; i < resultlen; i++)
  result->words[i] &= other->words[i];
 return result;
}
