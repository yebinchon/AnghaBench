
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_6__ {int graph; int config; } ;
typedef TYPE_1__ RCore ;
 int R_CORE_ANAL_GRAPHBODY ;
 int R_CORE_ANAL_GRAPHDIFF ;
 int R_CORE_ANAL_JSON ;
 int R_CORE_ANAL_JSON_FORMAT_DISASM ;
 int R_CORE_ANAL_STAR ;
 int __generate_graph (TYPE_1__*,int ) ;
 int r_agraph_reset (int ) ;
 int r_config_get_i (int ,char*) ;
 int r_cons_reset_colors () ;
 int r_core_agraph_print (TYPE_1__*,int,char*) ;
 int r_core_anal_graph (TYPE_1__*,int ,int) ;

__attribute__((used)) static void __print_diff_graph(RCore *c, ut64 off, int gmode) {
        int opts = R_CORE_ANAL_GRAPHBODY | R_CORE_ANAL_GRAPHDIFF;
        int use_utf8 = r_config_get_i (c->config, "scr.utf8");
        r_agraph_reset(c->graph);
        switch (gmode) {
        case 135:
                r_core_anal_graph (c, off, opts);
                break;
        case 129:
                r_core_anal_graph (c, off, opts | R_CORE_ANAL_STAR);
                break;
        case 128:
                __generate_graph (c, off);
                r_core_agraph_print (c, use_utf8, "t");
                break;
        case 133:
                __generate_graph (c, off);
                r_core_agraph_print (c, use_utf8, "v");
                r_cons_reset_colors ();
                break;
        case 130:
                __generate_graph (c, off);
                r_core_agraph_print (c, use_utf8, "k");
                break;
        case 134:
                __generate_graph (c, off);
                r_core_agraph_print (c, use_utf8, "g");
                break;
        case 131:
                r_core_anal_graph (c, off, opts | R_CORE_ANAL_JSON);
                break;
        case 132:
                r_core_anal_graph (c, off, opts | R_CORE_ANAL_JSON | R_CORE_ANAL_JSON_FORMAT_DISASM);
                break;
        case 136:
        default:
                __generate_graph (c, off);
                r_core_agraph_print (c, use_utf8, "");
                r_cons_reset_colors ();
        break;
        }
}
