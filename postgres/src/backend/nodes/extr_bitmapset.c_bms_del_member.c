
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_4__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITNUM (int) ;
 int ERROR ;
 int WORDNUM (int) ;
 int elog (int ,char*) ;

Bitmapset *
bms_del_member(Bitmapset *a, int x)
{
 int wordnum,
    bitnum;

 if (x < 0)
  elog(ERROR, "negative bitmapset member not allowed");
 if (a == ((void*)0))
  return ((void*)0);
 wordnum = WORDNUM(x);
 bitnum = BITNUM(x);
 if (wordnum < a->nwords)
  a->words[wordnum] &= ~((bitmapword) 1 << bitnum);
 return a;
}
