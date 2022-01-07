
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct flag_to_flag_t {scalar_t__ next; scalar_t__ offset; } ;
struct TYPE_3__ {scalar_t__ offset; int flags; } ;
typedef TYPE_1__ RCore ;


 scalar_t__ UT64_MAX ;
 int flag_to_flag_foreach ;
 int r_flag_foreach_glob (int ,char const*,int ,struct flag_to_flag_t*) ;
 int r_return_val_if_fail (char const*,int ) ;
 char* r_str_trim_ro (char const*) ;

__attribute__((used)) static int flag_to_flag(RCore *core, const char *glob) {
 r_return_val_if_fail (glob, 0);
 glob = r_str_trim_ro (glob);
 struct flag_to_flag_t u = { .next = UT64_MAX, .offset = core->offset };
 r_flag_foreach_glob (core->flags, glob, flag_to_flag_foreach, &u);
 if (u.next != UT64_MAX && u.next > core->offset) {
  return u.next - core->offset;
 }
 return 0;
}
