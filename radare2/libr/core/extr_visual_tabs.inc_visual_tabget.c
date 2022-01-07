
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int config; TYPE_1__* print; int printidx; int offset; } ;
struct TYPE_7__ {int current5format; int current4format; int current3format; int printMode; int hexMode; int disMode; void* dumpCols; void* cols; int ocur; int cur; int cur_enabled; void* asm_cmt_col; void* asm_bytes; void* asm_indent; void* asm_instr; void* asm_offset; int printidx; int offset; } ;
struct TYPE_6__ {int ocur; int cur; int cur_enabled; } ;
typedef TYPE_2__ RCoreVisualTab ;
typedef TYPE_3__ RCore ;


 int current3format ;
 int current4format ;
 int current5format ;
 int disMode ;
 int hexMode ;
 int printMode ;
 void* r_config_get_i (int ,char*) ;
 int r_return_if_fail (int) ;

__attribute__((used)) static void visual_tabget(RCore *core, RCoreVisualTab *tab) {
 r_return_if_fail (core && tab);

 tab->offset = core->offset;
 tab->printidx = core->printidx;
 tab->asm_offset = r_config_get_i (core->config, "asm.offset");
 tab->asm_instr = r_config_get_i (core->config, "asm.instr");
 tab->asm_indent = r_config_get_i (core->config, "asm.indent");
 tab->asm_bytes = r_config_get_i (core->config, "asm.bytes");
 tab->asm_cmt_col = r_config_get_i (core->config, "asm.cmt.col");
 tab->cur_enabled = core->print->cur_enabled;
 tab->cur = core->print->cur;
 tab->ocur = core->print->ocur;
 tab->cols = r_config_get_i (core->config, "hex.cols");
 tab->dumpCols = r_config_get_i (core->config, "scr.dumpcols");
 tab->disMode = disMode;
 tab->hexMode = hexMode;
 tab->printMode = printMode;
 tab->current3format = current3format;
 tab->current4format = current4format;
 tab->current5format = current5format;

}
