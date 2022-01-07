
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash_bucket {int dummy; } ;
struct hash {unsigned int (* hash_value ) (void const*) ;int (* key_compare ) (void const*,void const*) ;void (* free_value ) (void*) ;void (* free_key ) (void*) ;scalar_t__ count; scalar_t__ n_buckets_mask; int * buckets; } ;


 scalar_t__ MIN_BUCKETS ;
 int * calloc (scalar_t__,int) ;
 int free (struct hash*) ;
 struct hash* malloc (int) ;

__attribute__((used)) static struct hash *
hash_internal_new(unsigned int (*hash_value)(const void *key),
                  int (*key_compare)(const void *k1, const void *k2),
                  void (*free_key)(void *value),
                  void (*free_value)(void *value))
{
    struct hash *hash = malloc(sizeof(*hash));

    if (hash == ((void*)0))
        return ((void*)0);

    hash->buckets = calloc(MIN_BUCKETS, sizeof(struct hash_bucket));
    if (hash->buckets == ((void*)0)) {
        free(hash);
        return ((void*)0);
    }

    hash->hash_value = hash_value;
    hash->key_compare = key_compare;

    hash->free_value = free_value;
    hash->free_key = free_key;

    hash->n_buckets_mask = MIN_BUCKETS - 1;
    hash->count = 0;

    return hash;
}
