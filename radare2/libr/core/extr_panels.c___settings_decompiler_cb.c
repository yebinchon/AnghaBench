
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int config; TYPE_1__* panels; TYPE_2__* panels_root; } ;
struct TYPE_11__ {int depth; TYPE_3__** history; } ;
struct TYPE_10__ {size_t selectedIndex; char* name; struct TYPE_10__** sub; } ;
struct TYPE_9__ {int * cur_pdc_cache; int pdc_caches; } ;
struct TYPE_8__ {TYPE_4__* panels_menu; } ;
typedef int Sdb ;
typedef TYPE_2__ RPanelsRoot ;
typedef TYPE_3__ RPanelsMenuItem ;
typedef TYPE_4__ RPanelsMenu ;
typedef TYPE_5__ RCore ;


 int PANEL_MODE_DEFAULT ;
 int __set_mode (TYPE_5__*,int ) ;
 int __set_refresh_all (TYPE_5__*,int,int) ;
 char* r_config_get (int ,char*) ;
 int r_config_set (int ,char*,char const*) ;
 int * sdb_new0 () ;
 int * sdb_ptr_get (int ,char const*,int ) ;
 int sdb_ptr_set (int ,char const*,int *,int ) ;
 int strcmp (char const*,char const*) ;

int __settings_decompiler_cb(void *user) {
 RCore *core = (RCore *)user;
 RPanelsRoot *root = core->panels_root;
 RPanelsMenu *menu = core->panels->panels_menu;
 RPanelsMenuItem *parent = menu->history[menu->depth - 1];
 RPanelsMenuItem *child = parent->sub[parent->selectedIndex];
 const char *pdc_next = child->name;
 const char *pdc_now = r_config_get (core->config, "cmd.pdc");
 if (!strcmp (pdc_next, pdc_now)) {
  return 0;
 }
 r_config_set (core->config, "cmd.pdc", pdc_next);
 root->cur_pdc_cache = sdb_ptr_get (root->pdc_caches, pdc_next, 0);
 if (!root->cur_pdc_cache) {
  Sdb *sdb = sdb_new0 ();
  sdb_ptr_set (root->pdc_caches, pdc_next, sdb, 0);
  root->cur_pdc_cache = sdb;
 }
 __set_refresh_all (core, 0, 0);
 __set_mode (core, PANEL_MODE_DEFAULT);
 return 0;
}
