
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* index; } ;
struct TYPE_7__ {TYPE_1__* rd_indam; } ;
struct TYPE_6__ {int * (* amvacuumcleanup ) (TYPE_3__*,int *) ;} ;
typedef TYPE_2__* Relation ;
typedef TYPE_3__ IndexVacuumInfo ;
typedef int IndexBulkDeleteResult ;


 int CHECK_REL_PROCEDURE (int ) ;
 int RELATION_CHECKS ;
 int amvacuumcleanup ;
 int * stub1 (TYPE_3__*,int *) ;

IndexBulkDeleteResult *
index_vacuum_cleanup(IndexVacuumInfo *info,
      IndexBulkDeleteResult *stats)
{
 Relation indexRelation = info->index;

 RELATION_CHECKS;
 CHECK_REL_PROCEDURE(amvacuumcleanup);

 return indexRelation->rd_indam->amvacuumcleanup(info, stats);
}
