
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {void const* value; void const* key; } ;
struct hash {scalar_t__ count; scalar_t__ n_buckets_mask; } ;


 int EEXIST ;
 int errno ;
 struct hash_entry* hash_add_entry (struct hash*,void const*) ;
 int hash_n_buckets (struct hash*) ;
 int rehash (struct hash*,int) ;

int hash_add_unique(struct hash *hash, const void *key, const void *value)
{
    struct hash_entry *entry = hash_add_entry(hash, key);

    if (!entry)
        return -errno;

    if (entry->key || entry->value)
        return -EEXIST;

    entry->key = key;
    entry->value = value;

    if (hash->count > hash->n_buckets_mask)
        rehash(hash, hash_n_buckets(hash) * 2);

    return 0;
}
