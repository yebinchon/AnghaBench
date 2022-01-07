
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int prompt_type; } ;
struct TYPE_6__ {TYPE_1__* cons; } ;
struct TYPE_5__ {TYPE_3__* line; } ;
typedef TYPE_2__ RCore ;


 int R_LINE_PROMPT_DEFAULT ;
 int R_LINE_PROMPT_FILE ;
 int __add_cmdf_panel (TYPE_2__*,char*,char*) ;
 int __file_history_down ;
 int __file_history_up ;
 int r_line_hist_cmd_down ;
 int r_line_hist_cmd_up ;
 int r_line_set_hist_callback (TYPE_3__*,int *,int *) ;

int __open_file_cb(void *user) {
 RCore *core = (RCore *)user;
 core->cons->line->prompt_type = R_LINE_PROMPT_FILE;
 r_line_set_hist_callback (core->cons->line, &__file_history_up, &__file_history_down);
 __add_cmdf_panel (core, "open file: ", "o %s");
 core->cons->line->prompt_type = R_LINE_PROMPT_DEFAULT;
 r_line_set_hist_callback (core->cons->line, &r_line_hist_cmd_up, &r_line_hist_cmd_down);
 return 0;
}
