
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {char* value; } ;
struct TYPE_8__ {TYPE_1__* assembler; } ;
struct TYPE_7__ {int features; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int R_FREE (int ) ;
 int print_node_options (TYPE_3__*) ;
 int strdup (char*) ;
 int update_asmfeatures_options (TYPE_2__*,TYPE_3__*) ;

__attribute__((used)) static bool cb_asmfeatures(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 if (*node->value == '?') {
  update_asmfeatures_options (core, node);
  print_node_options (node);
  return 0;
 }
 R_FREE (core->assembler->features);
 if (node->value[0]) {
  core->assembler->features = strdup (node->value);
 }
 return 1;
}
