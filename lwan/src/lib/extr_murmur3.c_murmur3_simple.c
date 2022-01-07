
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;


 int MurmurHash3_x64_128 (void const*,size_t,int ,scalar_t__*) ;
 int MurmurHash3_x86_128 (void const*,size_t,int ,unsigned int*) ;
 int MurmurHash3_x86_32 (void const*,size_t,int ,unsigned int*) ;
 int seed_value ;
 size_t strlen (char*) ;

unsigned int
murmur3_simple(const void *keyptr)
{
    size_t len = strlen((char *)keyptr);

    uint64_t hash[2];
    MurmurHash3_x64_128(keyptr, len, seed_value, hash);
    return (unsigned int)hash[1];
}
