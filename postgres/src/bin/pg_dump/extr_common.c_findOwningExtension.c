
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int tableoid; int oid; } ;
struct TYPE_6__ {int tableoid; int oid; } ;
struct TYPE_7__ {int * ext; TYPE_1__ catId; } ;
typedef TYPE_2__ ExtensionMemberId ;
typedef int ExtensionInfo ;
typedef TYPE_3__ CatalogId ;


 TYPE_2__* extmembers ;
 int numextmembers ;
 int oidcmp (int ,int ) ;

ExtensionInfo *
findOwningExtension(CatalogId catalogId)
{
 ExtensionMemberId *low;
 ExtensionMemberId *high;






 if (numextmembers <= 0)
  return ((void*)0);
 low = extmembers;
 high = extmembers + (numextmembers - 1);
 while (low <= high)
 {
  ExtensionMemberId *middle;
  int difference;

  middle = low + (high - low) / 2;

  difference = oidcmp(middle->catId.oid, catalogId.oid);
  if (difference == 0)
   difference = oidcmp(middle->catId.tableoid, catalogId.tableoid);
  if (difference == 0)
   return middle->ext;
  else if (difference < 0)
   low = middle + 1;
  else
   high = middle - 1;
 }
 return ((void*)0);
}
