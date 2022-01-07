
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int idx; } ;
typedef TYPE_1__ RGraphNode ;



__attribute__((used)) static int node_cmp (unsigned int idx, RGraphNode *b) {
 return idx == b->idx ? 0 : -1;
}
