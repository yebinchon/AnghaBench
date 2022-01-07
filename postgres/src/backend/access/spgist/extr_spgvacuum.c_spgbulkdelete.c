
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* callback_state; int callback; int * stats; int * info; } ;
typedef TYPE_1__ spgBulkDeleteState ;
typedef int IndexVacuumInfo ;
typedef int IndexBulkDeleteResult ;
typedef int IndexBulkDeleteCallback ;


 scalar_t__ palloc0 (int) ;
 int spgvacuumscan (TYPE_1__*) ;

IndexBulkDeleteResult *
spgbulkdelete(IndexVacuumInfo *info, IndexBulkDeleteResult *stats,
     IndexBulkDeleteCallback callback, void *callback_state)
{
 spgBulkDeleteState bds;


 if (stats == ((void*)0))
  stats = (IndexBulkDeleteResult *) palloc0(sizeof(IndexBulkDeleteResult));
 bds.info = info;
 bds.stats = stats;
 bds.callback = callback;
 bds.callback_state = callback_state;

 spgvacuumscan(&bds);

 return stats;
}
