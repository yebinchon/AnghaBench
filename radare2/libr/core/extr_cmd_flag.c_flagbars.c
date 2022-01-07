
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct flagbar_t {int cols; TYPE_1__* core; } ;
struct TYPE_3__ {int flags; } ;
typedef TYPE_1__ RCore ;


 int flagbar_foreach ;
 int r_cons_get_size (int *) ;
 int r_flag_foreach_space_glob (int ,char const*,int ,int ,struct flagbar_t*) ;
 int r_flag_space_cur (int ) ;

__attribute__((used)) static void flagbars(RCore *core, const char *glob) {
 int cols = r_cons_get_size (((void*)0));
 cols -= 80;
 if (cols < 0) {
  cols += 80;
 }

 struct flagbar_t u = { .core = core, .cols = cols };
 r_flag_foreach_space_glob (core->flags, glob, r_flag_space_cur (core->flags), flagbar_foreach, &u);
}
