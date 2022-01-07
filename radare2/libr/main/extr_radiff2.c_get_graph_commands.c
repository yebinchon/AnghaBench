
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_2__ {int is_html; } ;
typedef int RCore ;


 int R_CORE_ANAL_GRAPHBODY ;
 int R_CORE_ANAL_GRAPHDIFF ;
 int R_CORE_ANAL_STAR ;
 int r_cons_echo (int *) ;
 char* r_cons_get_buffer () ;
 int r_cons_pop () ;
 int r_cons_push () ;
 TYPE_1__* r_cons_singleton () ;
 int r_core_anal_graph (int *,int ,int) ;
 char* strdup (char const*) ;

__attribute__((used)) static char *get_graph_commands(RCore *c, ut64 off) {
        bool tmp_html = r_cons_singleton ()->is_html;
        r_cons_singleton ()->is_html = 0;
        r_cons_push ();
        r_core_anal_graph (c, off, R_CORE_ANAL_GRAPHBODY | R_CORE_ANAL_GRAPHDIFF | R_CORE_ANAL_STAR);
        const char *static_str = r_cons_get_buffer ();
        char *retstr = strdup (static_str? static_str: "");
        r_cons_pop ();
        r_cons_echo (((void*)0));
        r_cons_singleton ()->is_html = tmp_html;
        return retstr;
}
