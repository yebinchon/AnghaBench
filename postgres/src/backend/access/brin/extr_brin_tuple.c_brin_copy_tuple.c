
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int BrinTuple ;


 int memcpy (int *,int *,scalar_t__) ;
 int * palloc (scalar_t__) ;
 int * repalloc (int *,scalar_t__) ;

BrinTuple *
brin_copy_tuple(BrinTuple *tuple, Size len, BrinTuple *dest, Size *destsz)
{
 if (!destsz || *destsz == 0)
  dest = palloc(len);
 else if (len > *destsz)
 {
  dest = repalloc(dest, len);
  *destsz = len;
 }

 memcpy(dest, tuple, len);

 return dest;
}
