
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int nwords; } ;
typedef TYPE_1__ Bitmapset ;


 size_t BITMAPSET_SIZE (int ) ;
 int memcpy (TYPE_1__*,TYPE_1__ const*,size_t) ;
 scalar_t__ palloc (size_t) ;

Bitmapset *
bms_copy(const Bitmapset *a)
{
 Bitmapset *result;
 size_t size;

 if (a == ((void*)0))
  return ((void*)0);
 size = BITMAPSET_SIZE(a->nwords);
 result = (Bitmapset *) palloc(size);
 memcpy(result, a, size);
 return result;
}
