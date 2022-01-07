
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int value; } ;
struct TYPE_3__ {int bin; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RConfigNode ;


 int r_bin_force_plugin (int ,int ) ;

__attribute__((used)) static bool cb_binforce(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 r_bin_force_plugin (core->bin, node->value);
 return 1;
}
