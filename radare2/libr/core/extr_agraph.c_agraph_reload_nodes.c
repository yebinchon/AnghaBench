
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RCore ;
typedef int RAnalFunction ;
typedef int RAGraph ;


 int r_agraph_reset (int *) ;
 int reload_nodes (int *,int *,int *) ;

__attribute__((used)) static int agraph_reload_nodes(RAGraph *g, RCore *core, RAnalFunction *fcn) {
 r_agraph_reset (g);

 return reload_nodes (g, core, fcn);
}
