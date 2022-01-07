
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ magic; int is_valid; } ;
typedef TYPE_1__ CachedPlanSource ;


 int Assert (int) ;
 scalar_t__ CACHEDPLANSOURCE_MAGIC ;

bool
CachedPlanIsValid(CachedPlanSource *plansource)
{
 Assert(plansource->magic == CACHEDPLANSOURCE_MAGIC);
 return plansource->is_valid;
}
