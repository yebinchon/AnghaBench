
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {void* value; } ;
typedef TYPE_1__ pair_t ;
struct TYPE_7__ {int order; int * buckets; } ;
typedef TYPE_2__ hashtable_t ;
typedef int bucket_t ;


 size_t hash_str (char const*) ;
 size_t hashmask (int ) ;
 TYPE_1__* hashtable_find_pair (TYPE_2__*,int *,char const*,size_t) ;

void *hashtable_get(hashtable_t *hashtable, const char *key)
{
    pair_t *pair;
    size_t hash;
    bucket_t *bucket;

    hash = hash_str(key);
    bucket = &hashtable->buckets[hash & hashmask(hashtable->order)];

    pair = hashtable_find_pair(hashtable, bucket, key, hash);
    if(!pair)
        return ((void*)0);

    return pair->value;
}
