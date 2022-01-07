
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int value; } ;
struct TYPE_5__ {TYPE_1__* dbg; } ;
struct TYPE_4__ {int glob_libs; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int free (int ) ;
 int strdup (int ) ;

__attribute__((used)) static bool cb_dbg_libs(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 free (core->dbg->glob_libs);
 core->dbg->glob_libs = strdup (node->value);
 return 1;
}
