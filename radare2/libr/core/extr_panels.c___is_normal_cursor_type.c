
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RPanel ;


 int PANEL_CMD_DISASSEMBLY ;
 int PANEL_CMD_HEXDUMP ;
 int PANEL_CMD_REGISTERS ;
 int PANEL_CMD_STACK ;
 scalar_t__ __check_panel_type (int *,int ) ;

bool __is_normal_cursor_type(RPanel *panel) {
 return (__check_panel_type (panel, PANEL_CMD_STACK) ||
   __check_panel_type (panel, PANEL_CMD_REGISTERS) ||
   __check_panel_type (panel, PANEL_CMD_DISASSEMBLY) ||
   __check_panel_type (panel, PANEL_CMD_HEXDUMP));
}
