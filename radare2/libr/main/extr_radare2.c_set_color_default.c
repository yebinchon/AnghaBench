
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int config; } ;


 int COLOR_MODE_16 ;
 int COLOR_MODE_16M ;
 int COLOR_MODE_256 ;
 int COLOR_MODE_DISABLED ;
 int free (char*) ;
 TYPE_1__ r ;
 int r_config_set_i (int ,char*,int ) ;
 scalar_t__ r_str_endswith (char*,char*) ;
 char* r_sys_getenv (char*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void set_color_default(void) {
 char *tmp = r_sys_getenv ("COLORTERM");
 if (tmp) {
  if ((r_str_endswith (tmp, "truecolor") || r_str_endswith (tmp, "24bit"))) {
   r_config_set_i (r.config, "scr.color", COLOR_MODE_16M);
  }
 } else {
  tmp = r_sys_getenv ("TERM");
  if (!tmp) {
   return;
  }
  if (r_str_endswith (tmp, "truecolor") || r_str_endswith (tmp, "24bit")) {
   r_config_set_i (r.config, "scr.color", COLOR_MODE_16M);
  } else if (r_str_endswith (tmp, "256color")) {
   r_config_set_i (r.config, "scr.color", COLOR_MODE_256);
  } else if (!strcmp (tmp, "dumb")) {

   r_config_set_i (r.config, "scr.color", COLOR_MODE_DISABLED);
  }
 }
 free (tmp);
}
