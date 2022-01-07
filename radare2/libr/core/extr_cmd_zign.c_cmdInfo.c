
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;
typedef TYPE_1__ RCore ;


 int R_FLAGS_FS_SIGNS ;
 int r_flag_list (int ,char const,char const*) ;
 int r_flag_space_pop (int ) ;
 int r_flag_space_push (int ,int ) ;

__attribute__((used)) static int cmdInfo(void *data, const char *input) {
 if (!data || !input) {
  return 0;
 }
 RCore *core = (RCore *) data;
 r_flag_space_push (core->flags, R_FLAGS_FS_SIGNS);
 r_flag_list (core->flags, *input, input[0] ? input + 1: "");
 r_flag_space_pop (core->flags);
 return 1;
}
