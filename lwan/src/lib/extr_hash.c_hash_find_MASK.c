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
struct hash_entry {scalar_t__ value; } ;
struct hash {int /*<<< orphan*/  (* hash_value ) (void const*) ;} ;

/* Variables and functions */
 struct hash_entry* FUNC0 (struct hash const*,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (void const*) ; 

void *FUNC2(const struct hash *hash, const void *key)
{
    const struct hash_entry *entry;

    entry = FUNC0(hash, key, hash->hash_value(key));
    if (entry)
        return (void *)entry->value;
    return NULL;
}