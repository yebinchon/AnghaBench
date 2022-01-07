
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* value; } ;
typedef int RCore ;
typedef TYPE_1__ RConfigNode ;


 int r_core_fortune_list (int *) ;

__attribute__((used)) static bool cb_cfg_fortunes(void *user, void *data) {
 RCore *core = (RCore *)user;
 RConfigNode *node = (RConfigNode *)data;

 if (node->value[0] == '?') {
  r_core_fortune_list (core);
  return 0;
 }
 return 1;
}
