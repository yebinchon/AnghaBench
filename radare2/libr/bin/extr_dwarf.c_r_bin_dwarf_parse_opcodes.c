
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ ut8 ;
struct TYPE_6__ {scalar_t__ opcode_base; } ;
typedef int RBinDwarfSMRegisters ;
typedef TYPE_1__ RBinDwarfLNPHeader ;
typedef int RBin ;
typedef int FILE ;


 scalar_t__ DW_LNE_end_sequence ;
 scalar_t__* r_bin_dwarf_parse_ext_opcode (int const*,scalar_t__ const*,size_t,TYPE_1__ const*,int *,int *,int) ;
 scalar_t__* r_bin_dwarf_parse_spec_opcode (int const*,scalar_t__ const*,size_t,TYPE_1__ const*,int *,scalar_t__,int *,int) ;
 scalar_t__* r_bin_dwarf_parse_std_opcode (int const*,scalar_t__ const*,size_t,TYPE_1__ const*,int *,scalar_t__,int *,int) ;

__attribute__((used)) static const ut8* r_bin_dwarf_parse_opcodes(const RBin *a, const ut8 *obuf,
  size_t len, const RBinDwarfLNPHeader *hdr,
  RBinDwarfSMRegisters *regs, FILE *f, int mode) {
 const ut8 *buf, *buf_end;
 ut8 opcode, ext_opcode;

 if (!a || !obuf || len < 8) {
  return ((void*)0);
 }
 buf = obuf;
 buf_end = obuf + len;

 while (buf && buf + 1 < buf_end) {
  opcode = *buf++;
  len--;
  if (!opcode) {
   ext_opcode = *buf;
   buf = r_bin_dwarf_parse_ext_opcode (a, buf, len, hdr, regs, f, mode);
   if (ext_opcode == DW_LNE_end_sequence) {
    break;
   }
  } else if (opcode >= hdr->opcode_base) {
   buf = r_bin_dwarf_parse_spec_opcode (a, buf, len, hdr, regs, opcode, f, mode);
  } else {
   buf = r_bin_dwarf_parse_std_opcode (a, buf, len, hdr, regs, opcode, f, mode);
  }
  len = (int)(buf_end - buf);
 }
 return buf;
}
