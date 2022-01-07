
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ i_value; } ;
struct TYPE_5__ {TYPE_1__* print; } ;
struct TYPE_4__ {int flags; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int R_PRINT_FLAGS_COMPACT ;

__attribute__((used)) static bool cb_hexcompact(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 if (node->i_value) {
  core->print->flags |= R_PRINT_FLAGS_COMPACT;
 } else {
  core->print->flags &= (~R_PRINT_FLAGS_COMPACT);
 }
 return 1;
}
