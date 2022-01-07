
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ ut64 ;
struct TYPE_8__ {scalar_t__ offset; } ;
typedef int RPanel ;
typedef TYPE_1__ RCore ;


 int PANEL_CMD_DISASSEMBLY ;
 scalar_t__ UT64_MAX ;
 scalar_t__ __check_panel_type (int *,int ) ;
 int __set_addr_by_type (TYPE_1__*,int ,scalar_t__) ;
 int __set_panel_addr (TYPE_1__*,int *,scalar_t__) ;
 int __set_refresh_all (TYPE_1__*,int,int) ;
 int __show_status (TYPE_1__*,char*) ;
 int r_core_visual_refs (TYPE_1__*,int,int) ;

void __handle_refs(RCore *core, RPanel *panel, ut64 tmp) {
 if (tmp != UT64_MAX) {
  core->offset = tmp;
 }
 int key = __show_status(core, "xrefs:x refs:X ");
 switch (key) {
 case 'x':
  (void)r_core_visual_refs(core, 1, 0);
  break;
 case 'X':
  (void)r_core_visual_refs(core, 0, 0);
  break;
 default:
  break;
 }
 if (__check_panel_type (panel, PANEL_CMD_DISASSEMBLY)) {
  __set_panel_addr (core, panel, core->offset);
  __set_refresh_all (core, 0, 0);
  return;
 }
 __set_addr_by_type (core, PANEL_CMD_DISASSEMBLY, core->offset);
}
