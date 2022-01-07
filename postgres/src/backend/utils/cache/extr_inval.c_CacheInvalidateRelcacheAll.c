
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InvalidOid ;
 int PrepareInvalidationState () ;
 int RegisterRelcacheInvalidation (int ,int ) ;

void
CacheInvalidateRelcacheAll(void)
{
 PrepareInvalidationState();

 RegisterRelcacheInvalidation(InvalidOid, InvalidOid);
}
