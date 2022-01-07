
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int lateral_relids; void* partial_pathlist; void* pathlist; scalar_t__ rows; } ;
typedef TYPE_1__ RelOptInfo ;
typedef int Path ;
typedef int MemoryContext ;


 int GetMemoryChunkContext (TYPE_1__*) ;
 int MemoryContextSwitchTo (int ) ;
 void* NIL ;
 int add_path (TYPE_1__*,int *) ;
 scalar_t__ create_append_path (int *,TYPE_1__*,void*,void*,void*,int ,int ,int,void*,int) ;
 scalar_t__ is_dummy_rel (TYPE_1__*) ;
 int set_cheapest (TYPE_1__*) ;

void
mark_dummy_rel(RelOptInfo *rel)
{
 MemoryContext oldcontext;


 if (is_dummy_rel(rel))
  return;


 oldcontext = MemoryContextSwitchTo(GetMemoryChunkContext(rel));


 rel->rows = 0;


 rel->pathlist = NIL;
 rel->partial_pathlist = NIL;


 add_path(rel, (Path *) create_append_path(((void*)0), rel, NIL, NIL,
             NIL, rel->lateral_relids,
             0, 0, NIL, -1));


 set_cheapest(rel);

 MemoryContextSwitchTo(oldcontext);
}
