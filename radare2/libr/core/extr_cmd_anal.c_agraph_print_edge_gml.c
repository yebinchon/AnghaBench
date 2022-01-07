
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* gnode; } ;
struct TYPE_5__ {int idx; } ;
typedef TYPE_2__ RANode ;


 int r_cons_printf (char*,int ,int ) ;

__attribute__((used)) static void agraph_print_edge_gml(RANode *from, RANode *to, void *user) {
 r_cons_printf ("  edge [\n"
  "    source  %d\n"
  "    target  %d\n"
  "  ]\n", from->gnode->idx, to->gnode->idx
  );
}
