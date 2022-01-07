
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef TYPE_1__ RCore ;


 int free (char*) ;
 scalar_t__ r_config_get_i (int ,char*) ;
 char* r_str_newf (char*,...) ;
 int r_sys_tts (char*,int) ;

__attribute__((used)) static void playMsg(RCore *core, const char *n, int len) {
 if (r_config_get_i (core->config, "scr.tts")) {
  if (len > 0) {
   char *s = r_str_newf ("%d %s", len, n);
   r_sys_tts (s, 1);
   free (s);
  } else if (len == 0) {
   char *s = r_str_newf ("there are no %s", n);
   r_sys_tts (s, 1);
   free (s);
  }
 }
}
