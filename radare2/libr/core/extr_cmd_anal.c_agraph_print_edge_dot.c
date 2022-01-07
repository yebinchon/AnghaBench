
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int title; } ;
typedef TYPE_1__ RANode ;


 int r_cons_printf (char*,int ,int ) ;

__attribute__((used)) static void agraph_print_edge_dot(RANode *from, RANode *to, void *user) {
 r_cons_printf ("\"%s\" -> \"%s\"\n", from->title, to->title);
}
