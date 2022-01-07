
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bitmapword ;
struct TYPE_3__ {int nwords; int* words; } ;
typedef TYPE_1__ Bitmapset ;


 int BITNUM (int) ;
 int ERROR ;
 int WORDNUM (int) ;
 int elog (int ,char*) ;

bool
bms_is_member(int x, const Bitmapset *a)
{
 int wordnum,
    bitnum;


 if (x < 0)
  elog(ERROR, "negative bitmapset member not allowed");
 if (a == ((void*)0))
  return 0;
 wordnum = WORDNUM(x);
 bitnum = BITNUM(x);
 if (wordnum >= a->nwords)
  return 0;
 if ((a->words[wordnum] & ((bitmapword) 1 << bitnum)) != 0)
  return 1;
 return 0;
}
