
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t ut8 ;
typedef int ut32 ;
typedef int ut16 ;
typedef int instr ;
struct TYPE_5__ {int opmin; int opmax; char const* name; int optype; } ;
struct TYPE_4__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
 int* fsr ;
 int memcpy (int*,size_t const*,int) ;
 TYPE_3__* ops ;
 char* sdb_fmt (char*,char*,int,...) ;
 int strcpy (char*,char const*) ;

int pic_pic18_disassemble(RAsmOp *op, char *opbuf, const ut8 *b, int blen) {
 int i;
 if (blen < 2) {
  strcpy (opbuf, "invalid");
  op->size = blen;
  return -1;
 }
 ut16 instr = 0 ;
 memcpy (&instr, b, sizeof (instr));

 const char *buf_asm = "invalid";
 strcpy (opbuf, buf_asm);

 for (i = 0; ops[i].opmin != (ops[i].opmin & instr) || ops[i].opmax != (ops[i].opmax | instr); i++) {
  ;
 }
 if (ops[i].opmin == 0 && ops[i].opmax == 0xffff) {
  strcpy (opbuf, ops[i].name);
  op->size = 2;
  return -1;
 }
 op->size = 2;
 switch (ops[i].optype) {
 case 131:
  buf_asm = ops[i].name;
  break;
 case 130:
 case 134:
  buf_asm = sdb_fmt ("%s 0x%x", ops[i].name, instr & 0xff);
  break;
 case 137:
  buf_asm = sdb_fmt ("%s 0x%x, %d, %d", ops[i].name, instr & 0xff, (instr >> 9) & 1, (instr >> 8) & 1);
  break;
 case 140:
  buf_asm = sdb_fmt ("%s 0x%x, %d", ops[i].name, instr & 0xff, (instr >> 8) & 1);
  break;
 case 139:
  buf_asm = sdb_fmt ("%s 0x%x, %d, %d", ops[i].name, instr & 0xff, (instr >> 9) & 0x7, (instr >> 8) & 0x1);
  break;
 case 132:
  buf_asm = sdb_fmt ("%s 0x%x", ops[i].name, instr & 0x7ff);
  break;
 case 138:
  if (blen < 4) {
   return -1;
  }
  op->size = 4;
  {
  ut32 dword_instr = *(ut32 *)b;


  if (dword_instr >> 28 != 0xf) {
   return -1;
  }
  buf_asm = sdb_fmt ("%s 0x%x, %d", ops[i].name,
     (dword_instr & 0xff) | (dword_instr >> 8 & 0xfff00), (dword_instr >> 8) & 0x1);
  }
  break;
 case 135:
  if (blen < 4) {
   return -1;
  }
  {
  op->size = 4;
  ut32 dword_instr = *(ut32 *)b;
  if (dword_instr >> 28 != 0xf) {
   return -1;
  }
  buf_asm = sdb_fmt ("%s 0x%x", ops[i].name,
     ((dword_instr & 0xff) | ((dword_instr & 0xfff0000) >>8) )*2);
  }
  break;
 case 136:
  if (blen < 4) {
   return -1;
  }
  op->size = 4;
  {
  ut32 dword_instr = *(ut32 *)b;
  if (dword_instr >> 28 != 0xf) {
   return -1;
  }
  buf_asm = sdb_fmt ("%s 0x%x, 0x%x", ops[i].name,
     dword_instr & 0xfff, (dword_instr >> 16) & 0xfff);
  }
  break;
 case 129:
  buf_asm = sdb_fmt ("%s 0x%x", ops[i].name, instr & 0xf);
  break;
 case 128:
  buf_asm = sdb_fmt ("%s %d", ops[i].name, instr & 0x1);
  break;
 case 133: {
  op->size = 4;
  ut32 dword_instr = *(ut32 *)b;
  if (dword_instr >> 28 != 0xf) {
   return -1;
  }
  ut8 reg_n = (dword_instr >> 4) & 0x3;
  buf_asm = sdb_fmt ("%s %s, %d", ops[i].name, fsr[reg_n],
   (dword_instr & 0xf) << 8 | ((dword_instr >> 16) & 0xff));
  break;
 }
 default:
  buf_asm = "unknown args";
 };
 strcpy (opbuf, buf_asm);
 return op->size;
}
