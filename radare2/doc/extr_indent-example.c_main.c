
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int addr; } ;
struct TYPE_9__ {int offset; TYPE_1__* anal; } ;
struct TYPE_8__ {int esil; } ;


 TYPE_2__* core ;
 TYPE_5__* fcn ;
 int help_msg_aft ;
 int* input ;
 int r_anal_esil_set_pc (int ,int ) ;
 int r_core_anal_type_match (TYPE_2__*,TYPE_5__*) ;
 int r_core_cmd_help (TYPE_2__*,int ) ;
 int r_core_seek (TYPE_2__*,int ,int) ;
 int seek ;

int main (int argc, char **argv) {
 r_anal_esil_set_pc (core->anal->esil, fcn ? fcn->addr : core->offset);
 switch (*input) {
 case '\0':
 {
  seek = core->offset;
  r_anal_esil_set_pc (core->anal->esil, fcn ? fcn->addr : core->offset);
  r_core_anal_type_match (core, fcn);
  r_core_seek (core, seek, 1);
  break;
 }
 case '?':
 default:
  r_core_cmd_help (core, help_msg_aft);
  break;
 }
 return 0;
}
