
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut16 ;
typedef int PicBaselineOpcode ;


 int PIC_BASELINE_OPCODE_ADDWF ;
 int PIC_BASELINE_OPCODE_ANDLW ;
 int PIC_BASELINE_OPCODE_ANDWF ;
 int PIC_BASELINE_OPCODE_BCF ;
 int PIC_BASELINE_OPCODE_BSF ;
 int PIC_BASELINE_OPCODE_BTFSC ;
 int PIC_BASELINE_OPCODE_BTFSS ;
 int PIC_BASELINE_OPCODE_CALL ;
 int PIC_BASELINE_OPCODE_CLRF ;
 int PIC_BASELINE_OPCODE_CLRW ;
 int PIC_BASELINE_OPCODE_CLRWDT ;
 int PIC_BASELINE_OPCODE_COMF ;
 int PIC_BASELINE_OPCODE_DECF ;
 int PIC_BASELINE_OPCODE_DECFSZ ;
 int PIC_BASELINE_OPCODE_GOTO ;
 int PIC_BASELINE_OPCODE_INCF ;
 int PIC_BASELINE_OPCODE_INCFSZ ;
 int PIC_BASELINE_OPCODE_INVALID ;
 int PIC_BASELINE_OPCODE_IORLW ;
 int PIC_BASELINE_OPCODE_IORWF ;
 int PIC_BASELINE_OPCODE_MOVF ;
 int PIC_BASELINE_OPCODE_MOVLB ;
 int PIC_BASELINE_OPCODE_MOVLW ;
 int PIC_BASELINE_OPCODE_MOVWF ;
 int PIC_BASELINE_OPCODE_NOP ;
 int PIC_BASELINE_OPCODE_OPTION ;
 int PIC_BASELINE_OPCODE_RETFIE ;
 int PIC_BASELINE_OPCODE_RETLW ;
 int PIC_BASELINE_OPCODE_RETURN ;
 int PIC_BASELINE_OPCODE_RLF ;
 int PIC_BASELINE_OPCODE_RRF ;
 int PIC_BASELINE_OPCODE_SLEEP ;
 int PIC_BASELINE_OPCODE_SUBWF ;
 int PIC_BASELINE_OPCODE_SWAPF ;
 int PIC_BASELINE_OPCODE_TRIS ;
 int PIC_BASELINE_OPCODE_XORLW ;
 int PIC_BASELINE_OPCODE_XORWF ;

PicBaselineOpcode pic_baseline_get_opcode(ut16 instr) {
 if (instr & 0xf000) {
  return PIC_BASELINE_OPCODE_INVALID;
 }

 switch ((instr >> 6) & 0x3f) {
 case 0x7:
  return PIC_BASELINE_OPCODE_ADDWF;
 case 0x5:
  return PIC_BASELINE_OPCODE_ANDWF;
 case 0x1:
  if (instr & (1 << 5)) {
   return PIC_BASELINE_OPCODE_CLRF;
  }
  if ((instr & 0x1f) == 0) {
   return PIC_BASELINE_OPCODE_CLRW;
  }
  return PIC_BASELINE_OPCODE_INVALID;
 case 0x9:
  return PIC_BASELINE_OPCODE_COMF;
 case 0x3:
  return PIC_BASELINE_OPCODE_DECF;
 case 0xb:
  return PIC_BASELINE_OPCODE_DECFSZ;
 case 0xa:
  return PIC_BASELINE_OPCODE_INCF;
 case 0xf:
  return PIC_BASELINE_OPCODE_INCFSZ;
 case 0x4:
  return PIC_BASELINE_OPCODE_IORWF;
 case 0x8:
  return PIC_BASELINE_OPCODE_MOVF;
 case 0x0:
  if (instr & (1 << 5)) {
   return PIC_BASELINE_OPCODE_MOVWF;
  } else {
   switch (instr & 0x1f) {
   case 0x0:
    return PIC_BASELINE_OPCODE_NOP;
   case 0x4:
    return PIC_BASELINE_OPCODE_CLRWDT;
   case 0x2:
    return PIC_BASELINE_OPCODE_OPTION;
   case 0x3:
    return PIC_BASELINE_OPCODE_SLEEP;
   case 0x1:
   case 0x5:
   case 0x6:
   case 0x7:
    return PIC_BASELINE_OPCODE_TRIS;
   case 0x10:
   case 0x11:
   case 0x12:
   case 0x13:
   case 0x14:
   case 0x15:
   case 0x16:
   case 0x17:
    return PIC_BASELINE_OPCODE_MOVLB;
   case 0x1e:
    return PIC_BASELINE_OPCODE_RETURN;
   case 0x1f:
    return PIC_BASELINE_OPCODE_RETFIE;
   default:
    return PIC_BASELINE_OPCODE_INVALID;
   }
  }
 case 0xd:
  return PIC_BASELINE_OPCODE_RLF;
 case 0xc:
  return PIC_BASELINE_OPCODE_RRF;
 case 0x2:
  return PIC_BASELINE_OPCODE_SUBWF;
 case 0xe:
  return PIC_BASELINE_OPCODE_SWAPF;
 case 0x6:
  return PIC_BASELINE_OPCODE_XORWF;
 case 0x10:
 case 0x11:
 case 0x12:
 case 0x13:
  return PIC_BASELINE_OPCODE_BCF;
 case 0x14:
 case 0x15:
 case 0x16:
 case 0x17:
  return PIC_BASELINE_OPCODE_BSF;
 case 0x18:
 case 0x19:
 case 0x1a:
 case 0x1b:
  return PIC_BASELINE_OPCODE_BTFSC;
 case 0x1c:
 case 0x1d:
 case 0x1e:
 case 0x1f:
  return PIC_BASELINE_OPCODE_BTFSS;
 case 0x38:
 case 0x39:
 case 0x3a:
 case 0x3b:
  return PIC_BASELINE_OPCODE_ANDLW;
 case 0x24:
 case 0x25:
 case 0x26:
 case 0x27:
  return PIC_BASELINE_OPCODE_CALL;
 case 0x28:
 case 0x29:
 case 0x2a:
 case 0x2b:
 case 0x2c:
 case 0x2d:
 case 0x2e:
 case 0x2f:
  return PIC_BASELINE_OPCODE_GOTO;
 case 0x34:
 case 0x35:
 case 0x36:
 case 0x37:
  return PIC_BASELINE_OPCODE_IORLW;
 case 0x30:
 case 0x31:
 case 0x32:
 case 0x33:
  return PIC_BASELINE_OPCODE_MOVLW;
 case 0x20:
 case 0x21:
 case 0x22:
 case 0x23:
  return PIC_BASELINE_OPCODE_RETLW;
 case 0x3c:
 case 0x3d:
 case 0x3e:
 case 0x3f:
  return PIC_BASELINE_OPCODE_XORLW;
 default:
  return PIC_BASELINE_OPCODE_INVALID;
 }
}
