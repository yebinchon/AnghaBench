
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int tableoid; int oid; } ;
struct TYPE_9__ {int tableoid; int oid; } ;
struct TYPE_10__ {TYPE_1__ catId; } ;
typedef TYPE_2__ DumpableObject ;
typedef TYPE_3__ CatalogId ;


 int DOCatalogIdCompare ;
 TYPE_2__** catalogIdMap ;
 int catalogIdMapValid ;
 int free (TYPE_2__**) ;
 int getDumpableObjects (TYPE_2__***,int*) ;
 int numCatalogIds ;
 int oidcmp (int ,int ) ;
 int qsort (void*,int,int,int ) ;

DumpableObject *
findObjectByCatalogId(CatalogId catalogId)
{
 DumpableObject **low;
 DumpableObject **high;

 if (!catalogIdMapValid)
 {
  if (catalogIdMap)
   free(catalogIdMap);
  getDumpableObjects(&catalogIdMap, &numCatalogIds);
  if (numCatalogIds > 1)
   qsort((void *) catalogIdMap, numCatalogIds,
      sizeof(DumpableObject *), DOCatalogIdCompare);
  catalogIdMapValid = 1;
 }






 if (numCatalogIds <= 0)
  return ((void*)0);
 low = catalogIdMap;
 high = catalogIdMap + (numCatalogIds - 1);
 while (low <= high)
 {
  DumpableObject **middle;
  int difference;

  middle = low + (high - low) / 2;

  difference = oidcmp((*middle)->catId.oid, catalogId.oid);
  if (difference == 0)
   difference = oidcmp((*middle)->catId.tableoid, catalogId.tableoid);
  if (difference == 0)
   return *middle;
  else if (difference < 0)
   low = middle + 1;
  else
   high = middle - 1;
 }
 return ((void*)0);
}
