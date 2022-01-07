
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int id; } ;
typedef int ScanKey ;
typedef TYPE_1__ CatCache ;
 int criticalRelcachesBuilt ;
 int criticalSharedRelcachesBuilt ;

__attribute__((used)) static bool
IndexScanOK(CatCache *cache, ScanKey cur_skey)
{
 switch (cache->id)
 {
  case 128:







   if (!criticalRelcachesBuilt)
    return 0;
   break;

  case 132:
  case 133:







   return 0;

  case 130:
  case 129:
  case 131:





   if (!criticalSharedRelcachesBuilt)
    return 0;
   break;

  default:
   break;
 }


 return 1;
}
