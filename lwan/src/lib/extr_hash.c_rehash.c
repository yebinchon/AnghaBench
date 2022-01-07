
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int used; struct hash_entry* entries; int value; int key; int hashval; } ;
struct hash_bucket {int used; struct hash_bucket* entries; int value; int key; int hashval; } ;
struct hash {scalar_t__ count; unsigned int n_buckets_mask; struct hash_entry* buckets; } ;


 scalar_t__ UNLIKELY (int) ;
 int assert (int) ;
 struct hash_entry* calloc (unsigned int,int) ;
 int free (struct hash_entry*) ;
 struct hash_entry* hash_add_entry_hashed (struct hash*,int ,int ) ;
 unsigned int hash_n_buckets (struct hash*) ;

__attribute__((used)) static void rehash(struct hash *hash, unsigned int new_bucket_size)
{
    struct hash_bucket *buckets = calloc(new_bucket_size, sizeof(*buckets));
    const struct hash_bucket *bucket_end = hash->buckets + hash_n_buckets(hash);
    const struct hash_bucket *bucket;
    struct hash hash_copy = *hash;

    assert((new_bucket_size & (new_bucket_size - 1)) == 0);
    assert(hash_n_buckets(hash) != new_bucket_size);

    if (buckets == ((void*)0))
        return;

    hash_copy.count = 0;
    hash_copy.n_buckets_mask = new_bucket_size - 1;
    hash_copy.buckets = buckets;

    for (bucket = hash->buckets; bucket < bucket_end; bucket++) {
        const struct hash_entry *old = bucket->entries;
        const struct hash_entry *old_end = old + bucket->used;

        for (; old < old_end; old++) {
            struct hash_entry *new;

            new = hash_add_entry_hashed(&hash_copy, old->key, old->hashval);
            if (UNLIKELY(!new))
                goto fail;

            new->key = old->key;
            new->value = old->value;
        }
    }




    for (bucket = hash->buckets; bucket < bucket_end; bucket++)
        free(bucket->entries);
    free(hash->buckets);

    hash->buckets = buckets;
    hash->n_buckets_mask = new_bucket_size - 1;

    assert(hash_copy.count == hash->count);

    return;

fail:
    for (bucket_end = bucket, bucket = hash->buckets; bucket < bucket_end;
         bucket++)
        free(bucket->entries);

    free(buckets);
}
