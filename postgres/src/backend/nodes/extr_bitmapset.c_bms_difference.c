
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * words; int nwords; } ;
typedef TYPE_1__ Bitmapset ;


 int Min (int ,int ) ;
 TYPE_1__* bms_copy (TYPE_1__ const*) ;

Bitmapset *
bms_difference(const Bitmapset *a, const Bitmapset *b)
{
 Bitmapset *result;
 int shortlen;
 int i;


 if (a == ((void*)0))
  return ((void*)0);
 if (b == ((void*)0))
  return bms_copy(a);

 result = bms_copy(a);

 shortlen = Min(a->nwords, b->nwords);
 for (i = 0; i < shortlen; i++)
  result->words[i] &= ~b->words[i];
 return result;
}
