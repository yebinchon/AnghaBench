
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* value; } ;
typedef TYPE_1__ RConfigNode ;


 int r_core_fortune_list_types () ;

__attribute__((used)) static bool cb_cfg_fortunes_type(void *user, void *data) {
 RConfigNode *node = (RConfigNode *)data;
 if (node->value[0] == '?') {
  r_core_fortune_list_types ();
  return 0;
 }
 return 1;
}
