
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ nwords; int * words; } ;
typedef TYPE_1__ Bitmapset ;


 TYPE_1__* bms_copy (TYPE_1__ const*) ;

Bitmapset *
bms_union(const Bitmapset *a, const Bitmapset *b)
{
 Bitmapset *result;
 const Bitmapset *other;
 int otherlen;
 int i;


 if (a == ((void*)0))
  return bms_copy(b);
 if (b == ((void*)0))
  return bms_copy(a);

 if (a->nwords <= b->nwords)
 {
  result = bms_copy(b);
  other = a;
 }
 else
 {
  result = bms_copy(a);
  other = b;
 }

 otherlen = other->nwords;
 for (i = 0; i < otherlen; i++)
  result->words[i] |= other->words[i];
 return result;
}
