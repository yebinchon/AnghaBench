
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int dshash_table_handle ;
struct TYPE_5__ {int find_locked; int find_exclusively_locked; scalar_t__ size_log2; int * buckets; TYPE_4__* control; void* arg; int params; int * area; } ;
typedef TYPE_1__ dshash_table ;
typedef int dshash_parameters ;
typedef int dsa_pointer ;
typedef int dsa_area ;
struct TYPE_6__ {scalar_t__ magic; } ;


 int Assert (int) ;
 scalar_t__ DSHASH_MAGIC ;
 TYPE_4__* dsa_get_address (int *,int ) ;
 TYPE_1__* palloc (int) ;

dshash_table *
dshash_attach(dsa_area *area, const dshash_parameters *params,
     dshash_table_handle handle, void *arg)
{
 dshash_table *hash_table;
 dsa_pointer control;


 hash_table = palloc(sizeof(dshash_table));


 control = handle;


 hash_table->area = area;
 hash_table->params = *params;
 hash_table->arg = arg;
 hash_table->control = dsa_get_address(area, control);
 hash_table->find_locked = 0;
 hash_table->find_exclusively_locked = 0;
 Assert(hash_table->control->magic == DSHASH_MAGIC);






 hash_table->buckets = ((void*)0);
 hash_table->size_log2 = 0;

 return hash_table;
}
