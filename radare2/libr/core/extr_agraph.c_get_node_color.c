
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* context; } ;
struct TYPE_6__ {char* graph_box2; char* graph_box; char* graph_diff_match; char* graph_diff_unmatch; char* graph_diff_new; char* graph_diff_unknown; } ;
struct TYPE_5__ {TYPE_2__ pal; } ;
typedef TYPE_3__ RCons ;


 int R_ANAL_DIFF_TYPE_MATCH ;
 int R_ANAL_DIFF_TYPE_UNMATCH ;
 TYPE_3__* r_cons_singleton () ;

__attribute__((used)) static char *get_node_color (int color, int cur) {
        RCons *cons = r_cons_singleton ();
        if (color == -1) {
                return cur ? cons->context->pal.graph_box2 : cons->context->pal.graph_box;
        }
        return color ? ( color==R_ANAL_DIFF_TYPE_MATCH ? cons->context->pal.graph_diff_match:

                color==R_ANAL_DIFF_TYPE_UNMATCH? cons->context->pal.graph_diff_unmatch : cons->context->pal.graph_diff_new): cons->context->pal.graph_diff_unknown;
}
