
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ (* compare_function ) (void const*,void const*,int ,int ) ;int key_size; } ;
struct TYPE_5__ {int arg; TYPE_1__ params; } ;
typedef TYPE_2__ dshash_table ;


 scalar_t__ stub1 (void const*,void const*,int ,int ) ;

__attribute__((used)) static inline bool
equal_keys(dshash_table *hash_table, const void *a, const void *b)
{
 return hash_table->params.compare_function(a, b,
              hash_table->params.key_size,
              hash_table->arg) == 0;
}
