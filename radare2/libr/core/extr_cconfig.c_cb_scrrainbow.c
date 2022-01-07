
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int flags; } ;
struct TYPE_6__ {scalar_t__ i_value; } ;
struct TYPE_5__ {TYPE_3__* print; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int R_PRINT_FLAGS_RAINBOW ;
 int r_core_cmd0 (TYPE_1__*,char*) ;
 int r_print_set_flags (TYPE_3__*,int ) ;

__attribute__((used)) static bool cb_scrrainbow(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 if (node->i_value) {
  core->print->flags |= R_PRINT_FLAGS_RAINBOW;
  r_core_cmd0 (core, "ecr");
 } else {
  core->print->flags &= (~R_PRINT_FLAGS_RAINBOW);
  r_core_cmd0 (core, "ecoo");
 }
 r_print_set_flags (core->print, core->print->flags);
 return 1;
}
