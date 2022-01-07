
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* index; } ;
struct TYPE_7__ {TYPE_1__* rd_indam; } ;
struct TYPE_6__ {int * (* ambulkdelete ) (TYPE_3__*,int *,int ,void*) ;} ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ IndexVacuumInfo ;
typedef int IndexBulkDeleteResult ;
typedef int IndexBulkDeleteCallback ;


 int CHECK_REL_PROCEDURE (int ) ;
 int RELATION_CHECKS ;
 int ambulkdelete ;
 int * stub1 (TYPE_3__*,int *,int ,void*) ;

IndexBulkDeleteResult *
index_bulk_delete(IndexVacuumInfo *info,
      IndexBulkDeleteResult *stats,
      IndexBulkDeleteCallback callback,
      void *callback_state)
{
 Relation indexRelation = info->index;

 RELATION_CHECKS;
 CHECK_REL_PROCEDURE(ambulkdelete);

 return indexRelation->rd_indam->ambulkdelete(info, stats,
             callback, callback_state);
}
