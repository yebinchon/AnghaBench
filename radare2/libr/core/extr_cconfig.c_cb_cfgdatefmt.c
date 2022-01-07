
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* value; } ;
struct TYPE_5__ {TYPE_1__* print; } ;
struct TYPE_4__ {int datefmt; } ;
typedef TYPE_2__ RCore ;
typedef TYPE_3__ RConfigNode ;


 int snprintf (int ,int,char*,char*) ;

__attribute__((used)) static bool cb_cfgdatefmt(void *user, void *data) {
 RCore *core = (RCore*) user;
 RConfigNode *node = (RConfigNode*) data;
 snprintf (core->print->datefmt, 32, "%s", node->value);
 return 1;
}
