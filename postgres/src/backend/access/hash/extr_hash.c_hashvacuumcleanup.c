
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int num_pages; } ;
struct TYPE_6__ {int index; } ;
typedef int Relation ;
typedef TYPE_1__ IndexVacuumInfo ;
typedef TYPE_2__ IndexBulkDeleteResult ;
typedef int BlockNumber ;


 int RelationGetNumberOfBlocks (int ) ;

IndexBulkDeleteResult *
hashvacuumcleanup(IndexVacuumInfo *info, IndexBulkDeleteResult *stats)
{
 Relation rel = info->index;
 BlockNumber num_pages;



 if (stats == ((void*)0))
  return ((void*)0);


 num_pages = RelationGetNumberOfBlocks(rel);
 stats->num_pages = num_pages;

 return stats;
}
