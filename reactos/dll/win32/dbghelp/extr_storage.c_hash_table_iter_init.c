
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_table_iter {int last; int index; int * element; struct hash_table const* ht; } ;
struct hash_table {int num_buckets; } ;


 int hash_table_hash (char const*,int) ;

void hash_table_iter_init(const struct hash_table* ht,
                          struct hash_table_iter* hti, const char* name)
{
    hti->ht = ht;
    if (name)
    {
        hti->last = hash_table_hash(name, ht->num_buckets);
        hti->index = hti->last - 1;
    }
    else
    {
        hti->last = ht->num_buckets - 1;
        hti->index = -1;
    }
    hti->element = ((void*)0);
}
