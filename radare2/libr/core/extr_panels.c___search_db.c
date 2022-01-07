
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* panels; } ;
struct TYPE_4__ {int db; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;


 char* sdb_get (int ,char const*,int ) ;

char *__search_db(RCore *core, const char *title) {
 RPanels *panels = core->panels;
 if (!panels->db) {
  return ((void*)0);
 }
 char *out = sdb_get (panels->db, title, 0);
 if (out) {
  return out;
 }
 return ((void*)0);
}
