
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32 ;
typedef int Datum ;


 int ResetPlanCache () ;

__attribute__((used)) static void
PlanCacheSysCallback(Datum arg, int cacheid, uint32 hashvalue)
{
 ResetPlanCache();
}
