
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;


 scalar_t__* SysCacheRelationOid ;
 int SysCacheRelationOidSize ;

bool
RelationHasSysCache(Oid relid)
{
 int low = 0,
    high = SysCacheRelationOidSize - 1;

 while (low <= high)
 {
  int middle = low + (high - low) / 2;

  if (SysCacheRelationOid[middle] == relid)
   return 1;
  if (SysCacheRelationOid[middle] < relid)
   low = middle + 1;
  else
   high = middle - 1;
 }

 return 0;
}
