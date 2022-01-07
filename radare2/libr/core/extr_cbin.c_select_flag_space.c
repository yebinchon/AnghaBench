
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; int name; } ;
struct TYPE_5__ {int flags; } ;
typedef TYPE_1__ RCore ;
typedef TYPE_2__ RBinSymbol ;


 int R_BIN_TYPE_SECTION_STR ;
 int R_FLAGS_FS_IMPORTS ;
 int R_FLAGS_FS_SYMBOLS ;
 int R_FLAGS_FS_SYMBOLS_SECTIONS ;
 int r_flag_space_push (int ,int ) ;
 int strcmp (scalar_t__,int ) ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static void select_flag_space(RCore *core, RBinSymbol *symbol) {
 if (!strncmp (symbol->name, "imp.", 4)) {
  r_flag_space_push (core->flags, R_FLAGS_FS_IMPORTS);
 } else if (symbol->type && !strcmp (symbol->type, R_BIN_TYPE_SECTION_STR)) {
  r_flag_space_push (core->flags, R_FLAGS_FS_SYMBOLS_SECTIONS);
 } else {
  r_flag_space_push (core->flags, R_FLAGS_FS_SYMBOLS);
 }
}
