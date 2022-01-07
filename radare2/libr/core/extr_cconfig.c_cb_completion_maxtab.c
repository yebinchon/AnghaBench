
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int i_value; } ;
struct TYPE_9__ {TYPE_3__* cons; } ;
struct TYPE_8__ {TYPE_2__* line; } ;
struct TYPE_6__ {int args_limit; } ;
struct TYPE_7__ {TYPE_1__ completion; } ;
typedef TYPE_4__ RCore ;
typedef TYPE_5__ RConfigNode ;



__attribute__((used)) static bool cb_completion_maxtab (void *user, void *data) {
        RCore *core = (RCore*) user;
        RConfigNode *node = (RConfigNode*) data;
        core->cons->line->completion.args_limit = node->i_value;
        return 1;
}
