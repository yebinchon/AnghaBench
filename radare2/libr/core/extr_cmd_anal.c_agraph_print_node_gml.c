
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int title; TYPE_1__* gnode; } ;
struct TYPE_4__ {int idx; } ;
typedef TYPE_2__ RANode ;


 int r_cons_printf (char*,int ,int ) ;

__attribute__((used)) static void agraph_print_node_gml(RANode *n, void *user) {
 r_cons_printf ("  node [\n"
  "    id  %d\n"
  "    label  \"%s\"\n"
  "  ]\n", n->gnode->idx, n->title);
}
