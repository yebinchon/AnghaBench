
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int i_value; } ;
struct TYPE_7__ {TYPE_2__* cons; } ;
struct TYPE_6__ {TYPE_1__* line; } ;
struct TYPE_5__ {int prompt_mode; } ;
typedef TYPE_3__ RCore ;
typedef TYPE_4__ RConfigNode ;



__attribute__((used)) static bool cb_scr_prompt_mode(void *user, void *data) {
 RCore *core = (RCore *) user;
 RConfigNode *node = (RConfigNode *) data;
 core->cons->line->prompt_mode = node->i_value;
 return 1;
}
