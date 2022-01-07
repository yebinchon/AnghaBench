
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int used; struct hash_entry* buckets; struct hash_entry* entries; scalar_t__ key; int (* free_key ) (void*) ;scalar_t__ value; int (* free_value ) (void*) ;} ;
struct hash_bucket {int used; struct hash_bucket* buckets; struct hash_bucket* entries; scalar_t__ key; int (* free_key ) (void*) ;scalar_t__ value; int (* free_value ) (void*) ;} ;
struct hash {int used; struct hash* buckets; struct hash* entries; scalar_t__ key; int (* free_key ) (void*) ;scalar_t__ value; int (* free_value ) (void*) ;} ;


 int free (struct hash_entry*) ;
 int hash_n_buckets (struct hash_entry*) ;
 int stub1 (void*) ;
 int stub2 (void*) ;

void hash_free(struct hash *hash)
{
    struct hash_bucket *bucket, *bucket_end;

    if (hash == ((void*)0))
        return;

    bucket = hash->buckets;
    bucket_end = hash->buckets + hash_n_buckets(hash);
    for (; bucket < bucket_end; bucket++) {
        struct hash_entry *entry, *entry_end;
        entry = bucket->entries;
        entry_end = entry + bucket->used;
        for (; entry < entry_end; entry++) {
            hash->free_value((void *)entry->value);
            hash->free_key((void *)entry->key);
        }
        free(bucket->entries);
    }
    free(hash->buckets);
    free(hash);
}
