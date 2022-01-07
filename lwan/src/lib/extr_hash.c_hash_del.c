
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {scalar_t__ key; scalar_t__ value; } ;
struct hash_bucket {int used; int total; struct hash_entry* entries; } ;
struct hash {unsigned int (* hash_value ) (void const*) ;unsigned int n_buckets_mask; int count; int (* free_key ) (void*) ;int (* free_value ) (void*) ;struct hash_bucket* buckets; } ;


 int ENOENT ;
 int MIN_BUCKETS ;
 int STEPS ;
 struct hash_entry* hash_find_entry (struct hash*,void const*,unsigned int) ;
 int hash_n_buckets (struct hash*) ;
 int memcpy (struct hash_entry*,struct hash_entry*,int) ;
 struct hash_entry* reallocarray (struct hash_entry*,unsigned int,int) ;
 int rehash (struct hash*,int) ;
 unsigned int stub1 (void const*) ;
 int stub2 (void*) ;
 int stub3 (void*) ;

int hash_del(struct hash *hash, const void *key)
{
    unsigned int hashval = hash->hash_value(key);
    unsigned int pos = hashval & hash->n_buckets_mask;
    struct hash_bucket *bucket = hash->buckets + pos;
    struct hash_entry *entry;

    entry = hash_find_entry(hash, key, hashval);
    if (entry == ((void*)0))
        return -ENOENT;

    hash->free_value((void *)entry->value);
    hash->free_key((void *)entry->key);

    if (bucket->used > 1) {





        struct hash_entry *entry_last = bucket->entries + bucket->used - 1;

        if (entry != entry_last)
            memcpy(entry, entry_last, sizeof(*entry));
    }

    bucket->used--;
    hash->count--;

    if (hash->n_buckets_mask > (MIN_BUCKETS - 1) && hash->count < hash->n_buckets_mask / 2) {
        rehash(hash, hash_n_buckets(hash) / 2);
    } else {
        unsigned int steps_used = bucket->used / STEPS;
        unsigned int steps_total = bucket->total / STEPS;

        if (steps_used + 1 < steps_total) {
            struct hash_entry *tmp = reallocarray(
                bucket->entries, steps_used + 1, STEPS * sizeof(*tmp));
            if (tmp) {
                bucket->entries = tmp;
                bucket->total = (steps_used + 1) * STEPS;
            }
        }
    }

    return 0;
}
