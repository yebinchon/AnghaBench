
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pre_visit; int member_0; } ;
typedef TYPE_1__ RTreeVisitor ;
typedef scalar_t__ RTreeNodeVisitCb ;
typedef int RTree ;


 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int r_tree_dfs (int *,TYPE_1__*) ;
 int stderr ;
 scalar_t__ trace_traverse_pre ;

__attribute__((used)) static void trace_traverse (RTree *t) {
 RTreeVisitor vis = { 0 };


 fprintf (stderr, "\x1b[2K\r");
 fflush (stderr);
 vis.pre_visit = (RTreeNodeVisitCb)trace_traverse_pre;
 r_tree_dfs (t, &vis);
}
