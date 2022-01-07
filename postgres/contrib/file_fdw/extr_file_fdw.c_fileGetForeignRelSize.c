
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int options; int is_program; int filename; } ;
struct TYPE_6__ {void* fdw_private; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef TYPE_2__ FileFdwPlanState ;


 int estimate_size (int *,TYPE_1__*,TYPE_2__*) ;
 int fileGetOptions (int ,int *,int *,int *) ;
 scalar_t__ palloc (int) ;

__attribute__((used)) static void
fileGetForeignRelSize(PlannerInfo *root,
       RelOptInfo *baserel,
       Oid foreigntableid)
{
 FileFdwPlanState *fdw_private;






 fdw_private = (FileFdwPlanState *) palloc(sizeof(FileFdwPlanState));
 fileGetOptions(foreigntableid,
       &fdw_private->filename,
       &fdw_private->is_program,
       &fdw_private->options);
 baserel->fdw_private = (void *) fdw_private;


 estimate_size(root, baserel, fdw_private);
}
