
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nwords; int * words; } ;
typedef TYPE_1__ Bitmapset ;


 int Min (int,int) ;
 int pfree (TYPE_1__*) ;

Bitmapset *
bms_int_members(Bitmapset *a, const Bitmapset *b)
{
 int shortlen;
 int i;


 if (a == ((void*)0))
  return ((void*)0);
 if (b == ((void*)0))
 {
  pfree(a);
  return ((void*)0);
 }

 shortlen = Min(a->nwords, b->nwords);
 for (i = 0; i < shortlen; i++)
  a->words[i] &= b->words[i];
 for (; i < a->nwords; i++)
  a->words[i] = 0;
 return a;
}
