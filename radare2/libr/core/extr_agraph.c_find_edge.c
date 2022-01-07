
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ from; scalar_t__ to; } ;
typedef TYPE_1__ RGraphEdge ;



__attribute__((used)) static int find_edge(const RGraphEdge *a, const RGraphEdge *b) {
 return a->from == b->to && a->to == b->from? 0: 1;
}
