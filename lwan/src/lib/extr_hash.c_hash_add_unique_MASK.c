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
struct hash_entry {void const* value; void const* key; } ;
struct hash {scalar_t__ count; scalar_t__ n_buckets_mask; } ;

/* Variables and functions */
 int EEXIST ; 
 int errno ; 
 struct hash_entry* FUNC0 (struct hash*,void const*) ; 
 int FUNC1 (struct hash*) ; 
 int /*<<< orphan*/  FUNC2 (struct hash*,int) ; 

int FUNC3(struct hash *hash, const void *key, const void *value)
{
    struct hash_entry *entry = FUNC0(hash, key);

    if (!entry)
        return -errno;

    if (entry->key || entry->value)
        return -EEXIST;

    entry->key = key;
    entry->value = value;

    if (hash->count > hash->n_buckets_mask)
        FUNC2(hash, FUNC1(hash) * 2);

    return 0;
}