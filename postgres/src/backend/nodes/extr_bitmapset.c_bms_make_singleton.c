
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_3__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITMAPSET_SIZE (int) ;
 int BITNUM (int) ;
 int ERROR ;
 int WORDNUM (int) ;
 int elog (int ,char*) ;
 scalar_t__ palloc0 (int ) ;

Bitmapset *
bms_make_singleton(int x)
{
 Bitmapset *result;
 int wordnum,
    bitnum;

 if (x < 0)
  elog(ERROR, "negative bitmapset member not allowed");
 wordnum = WORDNUM(x);
 bitnum = BITNUM(x);
 result = (Bitmapset *) palloc0(BITMAPSET_SIZE(wordnum + 1));
 result->nwords = wordnum + 1;
 result->words[wordnum] = ((bitmapword) 1 << bitnum);
 return result;
}
