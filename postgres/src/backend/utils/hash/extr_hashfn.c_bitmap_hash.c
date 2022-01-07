
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Size ;
typedef int Bitmapset ;


 int Assert (int) ;
 int bms_hash_value (int const* const) ;

uint32
bitmap_hash(const void *key, Size keysize)
{
 Assert(keysize == sizeof(Bitmapset *));
 return bms_hash_value(*((const Bitmapset *const *) key));
}
