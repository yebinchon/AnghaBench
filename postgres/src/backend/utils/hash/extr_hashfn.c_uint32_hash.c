
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Size ;


 int Assert (int) ;
 int DatumGetUInt32 (int ) ;
 int hash_uint32 (int const) ;

uint32
uint32_hash(const void *key, Size keysize)
{
 Assert(keysize == sizeof(uint32));
 return DatumGetUInt32(hash_uint32(*((const uint32 *) key)));
}
