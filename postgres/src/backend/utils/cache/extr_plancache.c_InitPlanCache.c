
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Datum ;


 int AMOPOPID ;
 int CacheRegisterRelcacheCallback (int ,int ) ;
 int CacheRegisterSyscacheCallback (int ,int ,int ) ;
 int FOREIGNDATAWRAPPEROID ;
 int FOREIGNSERVEROID ;
 int NAMESPACEOID ;
 int OPEROID ;
 int PROCOID ;
 int PlanCacheObjectCallback ;
 int PlanCacheRelCallback ;
 int PlanCacheSysCallback ;
 int TYPEOID ;

void
InitPlanCache(void)
{
 CacheRegisterRelcacheCallback(PlanCacheRelCallback, (Datum) 0);
 CacheRegisterSyscacheCallback(PROCOID, PlanCacheObjectCallback, (Datum) 0);
 CacheRegisterSyscacheCallback(TYPEOID, PlanCacheObjectCallback, (Datum) 0);
 CacheRegisterSyscacheCallback(NAMESPACEOID, PlanCacheSysCallback, (Datum) 0);
 CacheRegisterSyscacheCallback(OPEROID, PlanCacheSysCallback, (Datum) 0);
 CacheRegisterSyscacheCallback(AMOPOPID, PlanCacheSysCallback, (Datum) 0);
 CacheRegisterSyscacheCallback(FOREIGNSERVEROID, PlanCacheSysCallback, (Datum) 0);
 CacheRegisterSyscacheCallback(FOREIGNDATAWRAPPEROID, PlanCacheSysCallback, (Datum) 0);
}
