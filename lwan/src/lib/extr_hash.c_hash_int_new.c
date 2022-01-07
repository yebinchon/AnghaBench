
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash {int dummy; } ;


 int hash_int ;
 int hash_int_key_cmp ;
 struct hash* hash_internal_new (int ,int ,void (*) (void*),void (*) (void*)) ;
 void no_op (void*) ;

struct hash *hash_int_new(void (*free_key)(void *value),
                          void (*free_value)(void *value))
{
    return hash_internal_new(hash_int, hash_int_key_cmp,
                             free_key ? free_key : no_op,
                             free_value ? free_value : no_op);
}
