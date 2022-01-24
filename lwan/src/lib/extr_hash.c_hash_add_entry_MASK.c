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
struct hash_entry {int dummy; } ;
struct hash {unsigned int (* hash_value ) (void const*) ;} ;

/* Variables and functions */
 struct hash_entry* FUNC0 (struct hash*,void const*,unsigned int) ; 
 unsigned int FUNC1 (void const*) ; 

__attribute__((used)) static struct hash_entry *FUNC2(struct hash *hash, const void *key)
{
    unsigned int hashval = hash->hash_value(key);

    return FUNC0(hash, key, hashval);
}