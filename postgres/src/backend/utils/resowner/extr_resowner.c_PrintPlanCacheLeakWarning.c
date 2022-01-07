
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CachedPlan ;


 int WARNING ;
 int elog (int ,char*,int *) ;

__attribute__((used)) static void
PrintPlanCacheLeakWarning(CachedPlan *plan)
{
 elog(WARNING, "plancache reference leak: plan %p not closed", plan);
}
