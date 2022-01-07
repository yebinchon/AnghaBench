
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * words; int nwords; } ;
typedef TYPE_1__ Bitmapset ;


 int Min (int ,int ) ;

Bitmapset *
bms_del_members(Bitmapset *a, const Bitmapset *b)
{
 int shortlen;
 int i;


 if (a == ((void*)0))
  return ((void*)0);
 if (b == ((void*)0))
  return a;

 shortlen = Min(a->nwords, b->nwords);
 for (i = 0; i < shortlen; i++)
  a->words[i] &= ~b->words[i];
 return a;
}
