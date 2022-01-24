#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hash_entry {int used; struct hash_entry* entries; int /*<<< orphan*/  value; int /*<<< orphan*/  key; int /*<<< orphan*/  hashval; } ;
struct hash_bucket {int used; struct hash_bucket* entries; int /*<<< orphan*/  value; int /*<<< orphan*/  key; int /*<<< orphan*/  hashval; } ;
struct hash {scalar_t__ count; unsigned int n_buckets_mask; struct hash_entry* buckets; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct hash_entry* FUNC2 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hash_entry*) ; 
 struct hash_entry* FUNC4 (struct hash*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (struct hash*) ; 

__attribute__((used)) static void FUNC6(struct hash *hash, unsigned int new_bucket_size)
{
    struct hash_bucket *buckets = FUNC2(new_bucket_size, sizeof(*buckets));
    const struct hash_bucket *bucket_end = hash->buckets + FUNC5(hash);
    const struct hash_bucket *bucket;
    struct hash hash_copy = *hash;

    FUNC1((new_bucket_size & (new_bucket_size - 1)) == 0);
    FUNC1(FUNC5(hash) != new_bucket_size);

    if (buckets == NULL)
        return;

    hash_copy.count = 0;
    hash_copy.n_buckets_mask = new_bucket_size - 1;
    hash_copy.buckets = buckets;

    for (bucket = hash->buckets; bucket < bucket_end; bucket++) {
        const struct hash_entry *old = bucket->entries;
        const struct hash_entry *old_end = old + bucket->used;

        for (; old < old_end; old++) {
            struct hash_entry *new;

            new = FUNC4(&hash_copy, old->key, old->hashval);
            if (FUNC0(!new))
                goto fail;

            new->key = old->key;
            new->value = old->value;
        }
    }

    /* Original table must remain untouched in the event resizing fails:
     * previous loop may return early on allocation failure, so can't free
     * bucket entry arrays there.  */
    for (bucket = hash->buckets; bucket < bucket_end; bucket++)
        FUNC3(bucket->entries);
    FUNC3(hash->buckets);

    hash->buckets = buckets;
    hash->n_buckets_mask = new_bucket_size - 1;

    FUNC1(hash_copy.count == hash->count);

    return;

fail:
    for (bucket_end = bucket, bucket = hash->buckets; bucket < bucket_end;
         bucket++)
        FUNC3(bucket->entries);

    FUNC3(buckets);
}