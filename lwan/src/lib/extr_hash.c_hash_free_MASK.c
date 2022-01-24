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
struct hash_entry {int used; struct hash_entry* buckets; struct hash_entry* entries; scalar_t__ key; int /*<<< orphan*/  (* free_key ) (void*) ;scalar_t__ value; int /*<<< orphan*/  (* free_value ) (void*) ;} ;
struct hash_bucket {int used; struct hash_bucket* buckets; struct hash_bucket* entries; scalar_t__ key; int /*<<< orphan*/  (* free_key ) (void*) ;scalar_t__ value; int /*<<< orphan*/  (* free_value ) (void*) ;} ;
struct hash {int used; struct hash* buckets; struct hash* entries; scalar_t__ key; int /*<<< orphan*/  (* free_key ) (void*) ;scalar_t__ value; int /*<<< orphan*/  (* free_value ) (void*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hash_entry*) ; 
 int FUNC1 (struct hash_entry*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 

void FUNC4(struct hash *hash)
{
    struct hash_bucket *bucket, *bucket_end;

    if (hash == NULL)
        return;

    bucket = hash->buckets;
    bucket_end = hash->buckets + FUNC1(hash);
    for (; bucket < bucket_end; bucket++) {
        struct hash_entry *entry, *entry_end;
        entry = bucket->entries;
        entry_end = entry + bucket->used;
        for (; entry < entry_end; entry++) {
            hash->free_value((void *)entry->value);
            hash->free_key((void *)entry->key);
        }
        FUNC0(bucket->entries);
    }
    FUNC0(hash->buckets);
    FUNC0(hash);
}