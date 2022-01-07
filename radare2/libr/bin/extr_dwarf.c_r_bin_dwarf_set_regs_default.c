
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int default_is_stmt; } ;
struct TYPE_5__ {int file; int line; void* end_sequence; void* basic_block; int is_stmt; scalar_t__ column; scalar_t__ address; } ;
typedef TYPE_1__ RBinDwarfSMRegisters ;
typedef TYPE_2__ RBinDwarfLNPHeader ;


 void* DWARF_FALSE ;

__attribute__((used)) static void r_bin_dwarf_set_regs_default(const RBinDwarfLNPHeader *hdr, RBinDwarfSMRegisters *regs) {
 regs->address = 0;
 regs->file = 1;
 regs->line = 1;
 regs->column = 0;
 regs->is_stmt = hdr->default_is_stmt;
 regs->basic_block = DWARF_FALSE;
 regs->end_sequence = DWARF_FALSE;
}
