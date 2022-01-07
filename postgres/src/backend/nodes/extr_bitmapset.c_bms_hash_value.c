
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32 ;
typedef int bitmapword ;
struct TYPE_3__ {int nwords; scalar_t__* words; } ;
typedef TYPE_1__ Bitmapset ;


 int DatumGetUInt32 (int ) ;
 int hash_any (unsigned char const*,int) ;

uint32
bms_hash_value(const Bitmapset *a)
{
 int lastword;

 if (a == ((void*)0))
  return 0;
 for (lastword = a->nwords; --lastword >= 0;)
 {
  if (a->words[lastword] != 0)
   break;
 }
 if (lastword < 0)
  return 0;
 return DatumGetUInt32(hash_any((const unsigned char *) a->words,
           (lastword + 1) * sizeof(bitmapword)));
}
