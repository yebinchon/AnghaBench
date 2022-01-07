
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* layers; } ;
struct TYPE_4__ {int n_nodes; } ;
typedef TYPE_2__ RAGraph ;



__attribute__((used)) static int is_valid_pos(const RAGraph *g, int l, int pos) {
 return pos >= 0 && pos < g->layers[l].n_nodes;
}
