
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int find_locked; } ;
typedef TYPE_1__ dshash_table ;


 int Assert (int) ;
 int pfree (TYPE_1__*) ;

void
dshash_detach(dshash_table *hash_table)
{
 Assert(!hash_table->find_locked);


 pfree(hash_table);
}
