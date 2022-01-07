
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash {unsigned int n_buckets_mask; } ;



__attribute__((used)) static __attribute__((pure)) inline unsigned int
hash_n_buckets(const struct hash *hash)
{
    return hash->n_buckets_mask + 1;
}
