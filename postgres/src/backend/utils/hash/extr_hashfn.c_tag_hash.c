
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef scalar_t__ Size ;


 int DatumGetUInt32 (int ) ;
 int hash_any (unsigned char const*,int) ;

uint32
tag_hash(const void *key, Size keysize)
{
 return DatumGetUInt32(hash_any((const unsigned char *) key,
           (int) keysize));
}
