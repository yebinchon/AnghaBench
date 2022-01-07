
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* panels; } ;
struct TYPE_4__ {int rotate_db; } ;
typedef TYPE_1__ RPanels ;
typedef TYPE_2__ RCore ;


 char* PANEL_CMD_HEXDUMP ;
 int __rotate_disasm_cb ;
 int __rotate_entropy_h_cb ;
 int __rotate_entropy_v_cb ;
 int __rotate_function_cb ;
 int __rotate_hexdump_cb ;
 int __rotate_register_cb ;
 int sdb_ptr_set (int ,char*,int *,int ) ;

void __init_rotate_db(RCore *core) {
 RPanels *panels = core->panels;
 sdb_ptr_set (panels->rotate_db, "pd", &__rotate_disasm_cb, 0);
 sdb_ptr_set (panels->rotate_db, "p==", &__rotate_entropy_h_cb, 0);
 sdb_ptr_set (panels->rotate_db, "p=", &__rotate_entropy_v_cb, 0);
 sdb_ptr_set (panels->rotate_db, "px", &__rotate_hexdump_cb, 0);
 sdb_ptr_set (panels->rotate_db, "dr", &__rotate_register_cb, 0);
 sdb_ptr_set (panels->rotate_db, "af", &__rotate_function_cb, 0);
 sdb_ptr_set (panels->rotate_db, PANEL_CMD_HEXDUMP, &__rotate_hexdump_cb, 0);
}
