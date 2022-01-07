
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int config; int panels; } ;
struct TYPE_8__ {TYPE_1__* view; } ;
struct TYPE_7__ {int refresh; } ;
typedef TYPE_2__ RPanel ;
typedef TYPE_3__ RCore ;
typedef int RConsCanvas ;


 TYPE_2__* __get_cur_panel (int ) ;
 int __panels_refresh (TYPE_3__*) ;
 int firstRun ;
 int free (char*) ;
 int r_config_get_i (int ,char*) ;
 int r_config_set_i (int ,char*,int) ;
 char* r_cons_canvas_to_string (int *) ;
 int r_cons_clear00 () ;
 int r_cons_flush () ;
 int r_cons_get_size (int*) ;
 int r_cons_gotoxy (int ,int) ;
 int r_cons_strcat (char*) ;
 int r_str_ansi_filter (char*,int *,int *,int) ;
 char* r_str_scale (char*,int,int) ;
 int r_sys_usleep (int) ;

__attribute__((used)) static void demo_end (RCore *core, RConsCanvas *can) {
 bool utf8 = r_config_get_i (core->config, "scr.utf8");
 r_config_set_i (core->config, "scr.utf8", 0);
 RPanel *cur = __get_cur_panel (core->panels);
 cur->view->refresh = 1;
 firstRun= 0;
 __panels_refresh (core);
 firstRun= 1;
 r_config_set_i (core->config, "scr.utf8", utf8);
 char *s = r_cons_canvas_to_string (can);
 if (s) {

  r_str_ansi_filter (s, ((void*)0), ((void*)0), -1);
  int i, h, w = r_cons_get_size (&h);
  for (i = h; i > 0; i--) {
   int H = i;
   char *r = r_str_scale (s, w, H);
   r_cons_clear00 ();
   r_cons_gotoxy (0, (h / 2) - (H / 2));

   r_cons_strcat (r);
   r_cons_flush ();
   free (r);
   r_sys_usleep (3000);
  }
  r_sys_usleep (100000);
  free (s);
 }
}
