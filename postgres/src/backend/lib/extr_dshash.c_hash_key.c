
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key_size; int (* hash_function ) (void const*,int ,int ) ;} ;
struct TYPE_5__ {int arg; TYPE_1__ params; } ;
typedef TYPE_2__ dshash_table ;
typedef int dshash_hash ;


 int stub1 (void const*,int ,int ) ;

__attribute__((used)) static inline dshash_hash
hash_key(dshash_table *hash_table, const void *key)
{
 return hash_table->params.hash_function(key,
           hash_table->params.key_size,
           hash_table->arg);
}
