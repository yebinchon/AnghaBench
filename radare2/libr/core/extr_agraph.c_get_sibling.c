
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_1__* layers; } ;
struct TYPE_8__ {int pos_in_layer; size_t layer; } ;
struct TYPE_7__ {int ** nodes; } ;
typedef int RGraphNode ;
typedef TYPE_2__ RANode ;
typedef TYPE_3__ RAGraph ;


 scalar_t__ is_valid_pos (TYPE_3__ const*,size_t,int) ;

__attribute__((used)) static RGraphNode *get_sibling(const RAGraph *g, const RANode *n, int is_left, int is_adjust_class) {
 RGraphNode *res = ((void*)0);
 int pos = n->pos_in_layer;

 if ((is_left && is_adjust_class) || (!is_left && !is_adjust_class)) {
  pos++;
 } else {
  pos--;
 }

 if (is_valid_pos (g, n->layer, pos)) {
  res = g->layers[n->layer].nodes[pos];
 }
 return res;
}
