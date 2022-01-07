
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__* SysCacheSupportingRelOid ;
 int SysCacheSupportingRelOidSize ;

bool
RelationSupportsSysCache(Oid relid)
{
 int low = 0,
    high = SysCacheSupportingRelOidSize - 1;

 while (low <= high)
 {
  int middle = low + (high - low) / 2;

  if (SysCacheSupportingRelOid[middle] == relid)
   return 1;
  if (SysCacheSupportingRelOid[middle] < relid)
   low = middle + 1;
  else
   high = middle - 1;
 }

 return 0;
}
