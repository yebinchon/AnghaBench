
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* words; int nwords; } ;
typedef TYPE_1__ Bitmapset ;


 int Min (int ,int ) ;

bool
bms_overlap(const Bitmapset *a, const Bitmapset *b)
{
 int shortlen;
 int i;


 if (a == ((void*)0) || b == ((void*)0))
  return 0;

 shortlen = Min(a->nwords, b->nwords);
 for (i = 0; i < shortlen; i++)
 {
  if ((a->words[i] & b->words[i]) != 0)
   return 1;
 }
 return 0;
}
