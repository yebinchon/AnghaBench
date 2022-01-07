
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Size ;
typedef int Bitmapset ;


 int Assert (int) ;
 int bms_equal (int const* const,int const* const) ;

int
bitmap_match(const void *key1, const void *key2, Size keysize)
{
 Assert(keysize == sizeof(Bitmapset *));
 return !bms_equal(*((const Bitmapset *const *) key1),
       *((const Bitmapset *const *) key2));
}
