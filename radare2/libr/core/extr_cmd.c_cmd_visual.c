
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ http_up; } ;
typedef TYPE_1__ RCore ;


 int r_cons_is_interactive () ;
 int r_core_visual (TYPE_1__*,char const*) ;

__attribute__((used)) static int cmd_visual(void *data, const char *input) {
 RCore *core = (RCore*) data;
 if (core->http_up) {
  return 0;
 }
 if (!r_cons_is_interactive ()) {
  return 0;
 }
 return r_core_visual ((RCore *)data, input);
}
