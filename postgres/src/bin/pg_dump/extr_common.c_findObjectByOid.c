
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int oid; } ;
struct TYPE_6__ {TYPE_1__ catId; } ;
typedef int Oid ;
typedef TYPE_2__ DumpableObject ;


 int oidcmp (int ,int ) ;

__attribute__((used)) static DumpableObject *
findObjectByOid(Oid oid, DumpableObject **indexArray, int numObjs)
{
 DumpableObject **low;
 DumpableObject **high;
 if (numObjs <= 0)
  return ((void*)0);
 low = indexArray;
 high = indexArray + (numObjs - 1);
 while (low <= high)
 {
  DumpableObject **middle;
  int difference;

  middle = low + (high - low) / 2;
  difference = oidcmp((*middle)->catId.oid, oid);
  if (difference == 0)
   return *middle;
  else if (difference < 0)
   low = middle + 1;
  else
   high = middle - 1;
 }
 return ((void*)0);
}
