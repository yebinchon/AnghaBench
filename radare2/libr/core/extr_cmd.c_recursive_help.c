
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t ut8 ;
struct TYPE_8__ {struct TYPE_8__** sub; } ;
struct TYPE_7__ {TYPE_2__ root_cmd_descriptor; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RCmdDescriptor ;


 size_t const R_ARRAY_SIZE (TYPE_2__**) ;
 int recursive_help_go (TYPE_1__*,int,TYPE_2__*) ;

__attribute__((used)) static void recursive_help(RCore *core, int detail, const char *cmd_prefix) {
 const ut8 *p;
 RCmdDescriptor *desc = &core->root_cmd_descriptor;
 for (p = (const ut8 *)cmd_prefix; *p && *p < R_ARRAY_SIZE (desc->sub); p++) {
  if (!(desc = desc->sub[*p])) {
   return;
  }
 }
 recursive_help_go (core, detail, desc);
}
