
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ post_visit; int member_0; } ;
typedef TYPE_1__ RTreeVisitor ;
typedef scalar_t__ RTreeNodeVisitCb ;
typedef int RTree ;


 scalar_t__ node_free ;
 int r_tree_bfs (int *,TYPE_1__*) ;

__attribute__((used)) static void free_all_children (RTree *t) {
 RTreeVisitor vis = { 0 };
 vis.post_visit = (RTreeNodeVisitCb)node_free;
 r_tree_bfs (t, &vis);
}
