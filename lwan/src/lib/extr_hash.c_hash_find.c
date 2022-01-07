
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {scalar_t__ value; } ;
struct hash {int (* hash_value ) (void const*) ;} ;


 struct hash_entry* hash_find_entry (struct hash const*,void const*,int ) ;
 int stub1 (void const*) ;

void *hash_find(const struct hash *hash, const void *key)
{
    const struct hash_entry *entry;

    entry = hash_find_entry(hash, key, hash->hash_value(key));
    if (entry)
        return (void *)entry->value;
    return ((void*)0);
}
