
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct hash_table_elt {struct hash_table_elt* next; int name; } ;
struct hash_table_bucket {int dummy; } ;
struct hash_table {int num_buckets; int num_elts; TYPE_1__* buckets; int pool; } ;
struct TYPE_4__ {struct hash_table_elt* last; struct hash_table_elt* first; } ;


 int assert (TYPE_1__*) ;
 unsigned int hash_table_hash (int ,int) ;
 int memset (TYPE_1__*,int ,int) ;
 TYPE_1__* pool_alloc (int ,int) ;

void hash_table_add(struct hash_table* ht, struct hash_table_elt* elt)
{
    unsigned hash = hash_table_hash(elt->name, ht->num_buckets);

    if (!ht->buckets)
    {
        ht->buckets = pool_alloc(ht->pool, ht->num_buckets * sizeof(struct hash_table_bucket));
        assert(ht->buckets);
        memset(ht->buckets, 0, ht->num_buckets * sizeof(struct hash_table_bucket));
    }




    if (!ht->buckets[hash].first)
    {
        ht->buckets[hash].first = elt;
    }
    else
    {
        ht->buckets[hash].last->next = elt;
    }
    ht->buckets[hash].last = elt;
    elt->next = ((void*)0);
    ht->num_elts++;
}
