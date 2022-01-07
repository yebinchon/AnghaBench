
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** sub; scalar_t__ help_detail2; scalar_t__ help_detail; scalar_t__ help_msg; } ;
typedef int RCore ;
typedef TYPE_1__ RCmdDescriptor ;


 int R_ARRAY_SIZE (TYPE_1__**) ;
 int r_core_cmd_help (int *,scalar_t__) ;

__attribute__((used)) static void recursive_help_go(RCore *core, int detail, RCmdDescriptor *desc) {
 int i;
 if (desc->help_msg) {
  r_core_cmd_help (core, desc->help_msg);
 }
 if (detail >= 1) {
  if (desc->help_detail) {
   r_core_cmd_help (core, desc->help_detail);
  }
  if (detail >= 2 && desc->help_detail2) {
   r_core_cmd_help (core, desc->help_detail2);
  }
 }
 for (i = 32; i < R_ARRAY_SIZE (desc->sub); i++) {
  if (desc->sub[i]) {
   recursive_help_go (core, detail, desc->sub[i]);
  }
 }
}
