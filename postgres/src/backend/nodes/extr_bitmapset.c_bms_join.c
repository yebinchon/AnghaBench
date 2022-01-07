
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ nwords; int * words; } ;
typedef TYPE_1__ Bitmapset ;


 int pfree (TYPE_1__*) ;

Bitmapset *
bms_join(Bitmapset *a, Bitmapset *b)
{
 Bitmapset *result;
 Bitmapset *other;
 int otherlen;
 int i;


 if (a == ((void*)0))
  return b;
 if (b == ((void*)0))
  return a;

 if (a->nwords < b->nwords)
 {
  result = b;
  other = a;
 }
 else
 {
  result = a;
  other = b;
 }

 otherlen = other->nwords;
 for (i = 0; i < otherlen; i++)
  result->words[i] |= other->words[i];
 if (other != result)
  pfree(other);
 return result;
}
