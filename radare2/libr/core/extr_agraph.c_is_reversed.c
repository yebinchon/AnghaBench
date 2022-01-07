
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int back_edges; } ;
typedef int RListComparator ;
typedef int RGraphEdge ;
typedef TYPE_1__ RAGraph ;


 scalar_t__ find_edge ;
 scalar_t__ r_list_find (int ,int const*,int ) ;

__attribute__((used)) static int is_reversed(const RAGraph *g, const RGraphEdge *e) {
 return r_list_find (g->back_edges, e, (RListComparator) find_edge)? 1: 0;
}
