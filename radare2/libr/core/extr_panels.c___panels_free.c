
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mht; int almighty_db; int rotate_db; int db; int can; } ;
struct TYPE_7__ {int ** panels; } ;
typedef TYPE_1__ RPanelsRoot ;
typedef TYPE_2__ RPanels ;


 int __free_all_panels (TYPE_2__*) ;
 int free (TYPE_2__*) ;
 int ht_pp_free (int ) ;
 int r_cons_canvas_free (int ) ;
 int r_cons_switchbuf (int) ;
 int sdb_free (int ) ;

void __panels_free(RPanelsRoot *panels_root, int i, RPanels *panels) {
 r_cons_switchbuf (1);
 if (panels) {
  __free_all_panels (panels);
  r_cons_canvas_free (panels->can);
  sdb_free (panels->db);
  sdb_free (panels->rotate_db);
  sdb_free (panels->almighty_db);
  ht_pp_free (panels->mht);
  free (panels);
  panels_root->panels[i] = ((void*)0);
 }
}
