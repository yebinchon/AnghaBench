
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int config; } ;
typedef int RStrBuf ;
typedef TYPE_1__ RCore ;


 int __add_menu (TYPE_1__*,char const*,int ,int ) ;
 int __config_toggle_cb ;
 int __config_value_cb ;
 char** menus_settings_screen ;
 char* r_config_get (int ,char const*) ;
 int r_strbuf_append (int *,char*) ;
 int r_strbuf_free (int *) ;
 int r_strbuf_get (int *) ;
 int * r_strbuf_new (int *) ;
 int r_strbuf_set (int *,char const*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void __init_menu_screen_settings_layout(void *_core, const char *parent) {
 RCore *core = (RCore *)_core;
 RStrBuf *rsb = r_strbuf_new (((void*)0));
 int i = 0;
 while (menus_settings_screen[i]) {
  const char *menu = menus_settings_screen[i];
  r_strbuf_set (rsb, menu);
  r_strbuf_append (rsb, ": ");
  r_strbuf_append (rsb, r_config_get (core->config, menu));
  if (!strcmp (menus_settings_screen[i], "scr.color")) {
   __add_menu (core, parent, r_strbuf_get (rsb), __config_value_cb);
  } else {
   __add_menu (core, parent, r_strbuf_get (rsb), __config_toggle_cb);
  }
  i++;
 }
 r_strbuf_free (rsb);
}
