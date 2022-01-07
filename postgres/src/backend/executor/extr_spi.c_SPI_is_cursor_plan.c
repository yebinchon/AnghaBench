
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ resultDesc; } ;
struct TYPE_4__ {scalar_t__ magic; int plancache_list; } ;
typedef TYPE_1__* SPIPlanPtr ;
typedef TYPE_2__ CachedPlanSource ;


 scalar_t__ SPI_ERROR_ARGUMENT ;
 scalar_t__ SPI_result ;
 scalar_t__ _SPI_PLAN_MAGIC ;
 scalar_t__ linitial (int ) ;
 int list_length (int ) ;

bool
SPI_is_cursor_plan(SPIPlanPtr plan)
{
 CachedPlanSource *plansource;

 if (plan == ((void*)0) || plan->magic != _SPI_PLAN_MAGIC)
 {
  SPI_result = SPI_ERROR_ARGUMENT;
  return 0;
 }

 if (list_length(plan->plancache_list) != 1)
 {
  SPI_result = 0;
  return 0;
 }
 plansource = (CachedPlanSource *) linitial(plan->plancache_list);






 SPI_result = 0;


 if (plansource->resultDesc)
  return 1;

 return 0;
}
