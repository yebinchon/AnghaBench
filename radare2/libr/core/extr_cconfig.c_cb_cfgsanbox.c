
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_value; } ;
typedef TYPE_1__ RConfigNode ;


 int eprintf (char*) ;
 int r_sandbox_enable (int) ;

__attribute__((used)) static bool cb_cfgsanbox(void *user, void *data) {
 RConfigNode *node = (RConfigNode*) data;
 int ret = r_sandbox_enable (node->i_value);
 if (node->i_value != ret) {
  eprintf ("Cannot disable sandbox\n");
 }
 return (!node->i_value && ret)? 0: 1;
}
