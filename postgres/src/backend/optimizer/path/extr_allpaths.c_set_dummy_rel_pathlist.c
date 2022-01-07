
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int lateral_relids; void* partial_pathlist; void* pathlist; TYPE_1__* reltarget; scalar_t__ rows; } ;
struct TYPE_7__ {scalar_t__ width; } ;
typedef TYPE_2__ RelOptInfo ;
typedef int Path ;


 void* NIL ;
 int add_path (TYPE_2__*,int *) ;
 scalar_t__ create_append_path (int *,TYPE_2__*,void*,void*,void*,int ,int ,int,void*,int) ;
 int set_cheapest (TYPE_2__*) ;

__attribute__((used)) static void
set_dummy_rel_pathlist(RelOptInfo *rel)
{

 rel->rows = 0;
 rel->reltarget->width = 0;


 rel->pathlist = NIL;
 rel->partial_pathlist = NIL;


 add_path(rel, (Path *) create_append_path(((void*)0), rel, NIL, NIL,
             NIL, rel->lateral_relids,
             0, 0, NIL, -1));







 set_cheapest(rel);
}
