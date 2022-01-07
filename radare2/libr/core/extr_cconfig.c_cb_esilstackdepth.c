
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_value; } ;
typedef TYPE_1__ RConfigNode ;


 int eprintf (char*) ;

__attribute__((used)) static bool cb_esilstackdepth (void *user, void *data) {
 RConfigNode *node = (RConfigNode*) data;
 if (node->i_value < 3) {
  eprintf ("esil.stack.depth must be greater than 2\n");
  node->i_value = 32;
 }
 return 1;
}
