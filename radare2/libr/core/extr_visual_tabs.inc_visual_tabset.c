
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int config; TYPE_1__* print; int printidx; } ;
struct TYPE_10__ {int dumpCols; int cols; int asm_cmt_col; int asm_indent; int asm_bytes; int asm_instr; int asm_offset; int current5format; int current4format; int current3format; int printMode; int hexMode; int disMode; int ocur; int cur; int cur_enabled; int printidx; int offset; } ;
struct TYPE_9__ {int ocur; int cur; int cur_enabled; } ;
typedef TYPE_2__ RCoreVisualTab ;
typedef TYPE_3__ RCore ;


 size_t PRINT_3_FORMATS ;
 size_t PRINT_4_FORMATS ;
 size_t PRINT_5_FORMATS ;
 size_t PRINT_HEX_FORMATS ;
 size_t R_ABS (int ) ;
 int current3format ;
 int current4format ;
 int current5format ;
 int disMode ;
 int hexMode ;
 int * print3Formats ;
 int * print4Formats ;
 int * print5Formats ;
 int * printHexFormats ;
 int printMode ;
 int * printfmtSingle ;
 int r_config_set_i (int ,char*,int ) ;
 int r_core_seek (TYPE_3__*,int ,int) ;
 int r_core_visual_applyDisMode (TYPE_3__*,int ) ;
 int r_core_visual_applyHexMode (TYPE_3__*,int ) ;
 int r_return_if_fail (int) ;

__attribute__((used)) static void visual_tabset(RCore *core, RCoreVisualTab *tab) {
 r_return_if_fail (core && tab);

 r_core_seek (core, tab->offset, 1);
 core->printidx = tab->printidx;
 core->print->cur_enabled = tab->cur_enabled;
 core->print->cur = tab->cur;
 core->print->ocur = tab->ocur;
 disMode = tab->disMode;
 hexMode = tab->hexMode;
 printMode = tab->printMode;
 current3format = tab->current3format;
 current4format = tab->current4format;
 current5format = tab->current5format;
 r_core_visual_applyDisMode (core, disMode);
 r_core_visual_applyHexMode (core, hexMode);
 r_config_set_i (core->config, "asm.offset", tab->asm_offset);
 r_config_set_i (core->config, "asm.instr", tab->asm_instr);
 r_config_set_i (core->config, "asm.bytes", tab->asm_bytes);
 r_config_set_i (core->config, "asm.indent", tab->asm_indent);
 r_config_set_i (core->config, "asm.cmt.col", tab->asm_cmt_col);
 r_config_set_i (core->config, "hex.cols", tab->cols);
 r_config_set_i (core->config, "scr.dumpcols", tab->dumpCols);
 printfmtSingle[0] = printHexFormats[R_ABS(hexMode) % PRINT_HEX_FORMATS];
 printfmtSingle[2] = print3Formats[R_ABS(current3format) % PRINT_3_FORMATS];
 printfmtSingle[3] = print4Formats[R_ABS(current4format) % PRINT_4_FORMATS];
 printfmtSingle[4] = print5Formats[R_ABS(current5format) % PRINT_5_FORMATS];
}
