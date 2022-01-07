
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_entry {int dummy; } ;
struct hash {unsigned int (* hash_value ) (void const*) ;} ;


 struct hash_entry* hash_add_entry_hashed (struct hash*,void const*,unsigned int) ;
 unsigned int stub1 (void const*) ;

__attribute__((used)) static struct hash_entry *hash_add_entry(struct hash *hash, const void *key)
{
    unsigned int hashval = hash->hash_value(key);

    return hash_add_entry_hashed(hash, key, hashval);
}
