
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; } ;
typedef TYPE_1__ RConfigNode ;


 int R_SYS_HOME ;
 int r_sys_setenv (int ,scalar_t__) ;

__attribute__((used)) static bool cb_dirhome(void *user, void *data) {
 RConfigNode *node = (RConfigNode*) data;
 if (node->value) {
  r_sys_setenv (R_SYS_HOME, node->value);
 }
 return 1;
}
