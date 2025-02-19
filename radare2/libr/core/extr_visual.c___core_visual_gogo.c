
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int maps; int va; } ;
struct TYPE_15__ {TYPE_2__* print; int offset; TYPE_6__* io; int config; } ;
struct TYPE_14__ {int itv; } ;
struct TYPE_12__ {int (* get_size ) (int*) ;} ;
struct TYPE_13__ {TYPE_1__ consbind; } ;
typedef int SdbListIter ;
typedef TYPE_2__ RPrint ;
typedef TYPE_3__ RIOMap ;
typedef TYPE_4__ RCore ;


 int * ls_head (int ) ;
 TYPE_3__* ls_iter_get (int *) ;
 int * ls_tail (int ) ;
 int r_config_get_i (int ,char*) ;
 int r_core_seek (TYPE_4__*,int ,int) ;
 TYPE_3__* r_io_map_get (TYPE_6__*,int ) ;
 int r_io_sundo_push (TYPE_6__*,int ,int ) ;
 int r_itv_begin (int ) ;
 int r_itv_end (int ) ;
 int r_print_get_cursor (TYPE_2__*) ;
 int stub1 (int*) ;

__attribute__((used)) static bool __core_visual_gogo (RCore *core, int ch) {
 RIOMap *map;
 int ret = -1;
 switch (ch) {
 case 'g':
  if (core->io->va) {
   RIOMap *map = r_io_map_get (core->io, core->offset);
   if (!map) {
    SdbListIter *i = ls_tail (core->io->maps);
    if (i) {
     map = ls_iter_get (i);
    }
   }
   if (map) {
    r_core_seek (core, r_itv_begin (map->itv), 1);
   }
  } else {
   r_core_seek (core, 0, 1);
  }
  r_io_sundo_push (core->io, core->offset, r_print_get_cursor (core->print));
  return 1;
 case 'G':
  map = r_io_map_get (core->io, core->offset);
  if (!map) {
   SdbListIter *i = ls_head (core->io->maps);
   if (i) {
    map = ls_iter_get (i);
   }
  }
  if (map) {
   RPrint *p = core->print;
   int scr_rows;
   if (!p->consbind.get_size) {
    break;
   }
   (void)p->consbind.get_size (&scr_rows);
   int scols = r_config_get_i (core->config, "hex.cols");
   ret = r_core_seek (core, r_itv_end (map->itv) - (scr_rows - 2) * scols, 1);
  }
  if (ret != -1) {
   r_io_sundo_push (core->io, core->offset, r_print_get_cursor (core->print));
  }
  return 1;
 }
 return 0;
}
