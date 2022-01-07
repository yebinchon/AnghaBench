
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; int * plancache_list; } ;
typedef TYPE_1__* SPIPlanPtr ;
typedef int List ;


 int Assert (int) ;
 scalar_t__ _SPI_PLAN_MAGIC ;

List *
SPI_plan_get_plan_sources(SPIPlanPtr plan)
{
 Assert(plan->magic == _SPI_PLAN_MAGIC);
 return plan->plancache_list;
}
