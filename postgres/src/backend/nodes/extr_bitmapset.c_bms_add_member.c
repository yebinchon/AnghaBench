
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_6__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITMAPSET_SIZE (int) ;
 int BITNUM (int) ;
 int ERROR ;
 int WORDNUM (int) ;
 TYPE_1__* bms_make_singleton (int) ;
 int elog (int ,char*) ;
 scalar_t__ repalloc (TYPE_1__*,int ) ;

Bitmapset *
bms_add_member(Bitmapset *a, int x)
{
 int wordnum,
    bitnum;

 if (x < 0)
  elog(ERROR, "negative bitmapset member not allowed");
 if (a == ((void*)0))
  return bms_make_singleton(x);
 wordnum = WORDNUM(x);
 bitnum = BITNUM(x);


 if (wordnum >= a->nwords)
 {
  int oldnwords = a->nwords;
  int i;

  a = (Bitmapset *) repalloc(a, BITMAPSET_SIZE(wordnum + 1));
  a->nwords = wordnum + 1;

  for (i = oldnwords; i < a->nwords; i++)
   a->words[i] = 0;
 }

 a->words[wordnum] |= ((bitmapword) 1 << bitnum);
 return a;
}
