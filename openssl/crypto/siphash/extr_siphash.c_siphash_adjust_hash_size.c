
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t SIPHASH_MAX_DIGEST_SIZE ;

__attribute__((used)) static size_t siphash_adjust_hash_size(size_t hash_size)
{
    if (hash_size == 0)
        hash_size = SIPHASH_MAX_DIGEST_SIZE;
    return hash_size;
}
