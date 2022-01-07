
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {TYPE_2__* query_data; } ;
typedef TYPE_1__ plperl_query_entry ;
struct TYPE_6__ {int plan_cxt; int plan; } ;
typedef TYPE_2__ plperl_query_desc ;
struct TYPE_7__ {int query_hash; } ;
typedef int SPIPlanPtr ;


 int ERROR ;
 int HASH_FIND ;
 int HASH_REMOVE ;
 int MemoryContextDelete (int ) ;
 int SPI_freeplan (int ) ;
 int check_spi_usage_allowed () ;
 int elog (int ,char*) ;
 TYPE_1__* hash_search (int ,char*,int ,int *) ;
 TYPE_3__* plperl_active_interp ;

void
plperl_spi_freeplan(char *query)
{
 SPIPlanPtr plan;
 plperl_query_desc *qdesc;
 plperl_query_entry *hash_entry;

 check_spi_usage_allowed();

 hash_entry = hash_search(plperl_active_interp->query_hash, query,
        HASH_FIND, ((void*)0));
 if (hash_entry == ((void*)0))
  elog(ERROR, "spi_freeplan: Invalid prepared query passed");

 qdesc = hash_entry->query_data;
 if (qdesc == ((void*)0))
  elog(ERROR, "spi_freeplan: plperl query_hash value vanished");
 plan = qdesc->plan;





 hash_search(plperl_active_interp->query_hash, query,
    HASH_REMOVE, ((void*)0));

 MemoryContextDelete(qdesc->plan_cxt);

 SPI_freeplan(plan);
}
