
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int is_callgraph; } ;
typedef int RCore ;
typedef int RAnalFunction ;
typedef TYPE_1__ RAGraph ;


 int get_bbnodes (TYPE_1__*,int *,int *) ;
 int get_cgnodes (TYPE_1__*,int *,int *) ;

__attribute__((used)) static int reload_nodes(RAGraph *g, RCore *core, RAnalFunction *fcn) {
 int is_c = g->is_callgraph;
 return is_c? get_cgnodes (g, core, fcn): get_bbnodes (g, core, fcn);
}
