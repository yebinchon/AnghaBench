
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {char* value; } ;
struct TYPE_6__ {TYPE_1__* dbg; } ;
struct TYPE_5__ {int btalgo; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int free (int ) ;
 int print_node_options (TYPE_3__*) ;
 int strdup (char*) ;

__attribute__((used)) static bool cb_dbg_btalgo(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 if (*node->value == '?') {
  print_node_options (node);
  return 0;
 }
 free (core->dbg->btalgo);
 core->dbg->btalgo = strdup (node->value);
 return 1;
}
