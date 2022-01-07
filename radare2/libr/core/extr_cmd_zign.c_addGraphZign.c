
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int anal; } ;
struct TYPE_6__ {int member_0; } ;
typedef TYPE_1__ RSignGraph ;
typedef TYPE_2__ RCore ;


 int eprintf (char*) ;
 int parseGraphMetrics (char const*,int,TYPE_1__*) ;
 int r_sign_add_graph (int ,char const*,TYPE_1__) ;

__attribute__((used)) static bool addGraphZign(RCore *core, const char *name, const char *args0, int nargs) {
 RSignGraph graph = {0};
 if (!parseGraphMetrics (args0, nargs, &graph)) {
  eprintf ("error: invalid arguments\n");
  return 0;
 }
 return r_sign_add_graph (core->anal, name, graph);
}
