
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int dshash_table_handle ;
struct TYPE_5__ {TYPE_1__* control; } ;
typedef TYPE_2__ dshash_table ;
struct TYPE_4__ {scalar_t__ magic; int handle; } ;


 int Assert (int) ;
 scalar_t__ DSHASH_MAGIC ;

dshash_table_handle
dshash_get_hash_table_handle(dshash_table *hash_table)
{
 Assert(hash_table->control->magic == DSHASH_MAGIC);

 return hash_table->control->handle;
}
