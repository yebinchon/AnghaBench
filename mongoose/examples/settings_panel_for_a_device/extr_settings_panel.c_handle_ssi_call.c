
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mg_connection {int dummy; } ;
struct TYPE_2__ {char const* setting3; int setting2; int setting1; } ;


 int mg_printf (struct mg_connection*,char*) ;
 int mg_printf_html_escape (struct mg_connection*,char*,int ) ;
 TYPE_1__ s_settings ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static void handle_ssi_call(struct mg_connection *nc, const char *param) {
  if (strcmp(param, "setting1") == 0) {
    mg_printf_html_escape(nc, "%s", s_settings.setting1);
  } else if (strcmp(param, "setting2") == 0) {
    mg_printf_html_escape(nc, "%s", s_settings.setting2);
  } else if (strcmp(param, "setting3_is_one") == 0) {
    if (strcmp(s_settings.setting3, "one") == 0) mg_printf(nc, "checked");
  } else if (strcmp(param, "setting3_is_two") == 0) {
    if (strcmp(s_settings.setting3, "two") == 0) mg_printf(nc, "checked");
  }
}
