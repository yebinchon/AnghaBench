
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* value; } ;
typedef TYPE_1__ RConfigNode ;


 int print_node_options (TYPE_1__*) ;

__attribute__((used)) static bool cb_dbgbep(void *user, void *data) {
 RConfigNode *node = (RConfigNode*) data;
 if (*node->value == '?') {
  print_node_options (node);
  return 0;
 }
 return 1;
}
