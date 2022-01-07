
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef void* uint32_t ;
struct Swap64 {int i; void** ul; } ;


 void* php_pack_reverse_int32 (void*) ;

__attribute__((used)) static inline uint64_t php_pack_reverse_int64(uint64_t arg)
{
 union Swap64 {
  uint64_t i;
  uint32_t ul[2];
 } tmp, result;
 tmp.i = arg;
 result.ul[0] = php_pack_reverse_int32(tmp.ul[1]);
 result.ul[1] = php_pack_reverse_int32(tmp.ul[0]);

 return result.i;
}
