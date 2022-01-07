
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_10__ {scalar_t__ cpu; } ;
struct TYPE_9__ {int size; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int pic_baseline_disassemble (TYPE_1__*,char*,int const*,int) ;
 int pic_midrange_disassemble (TYPE_1__*,char*,int const*,int) ;
 int pic_pic18_disassemble (TYPE_1__*,char*,int const*,int) ;
 int r_asm_op_set_asm (TYPE_1__*,char const*) ;
 scalar_t__ strcasecmp (scalar_t__,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int asm_pic_disassemble(RAsm *a, RAsmOp *op, const ut8 *b, int l) {
 int res = -1;
 char opbuf[128];
 const char *opstr = opbuf;
 strcpy (opbuf, "invalid");
 if (a->cpu && strcasecmp (a->cpu, "baseline") == 0) {
  res = pic_baseline_disassemble (op, opbuf, b, l);
 } else if (a->cpu && strcasecmp (a->cpu, "midrange") == 0) {
  res = pic_midrange_disassemble (op, opbuf, b, l);
 } else if (a->cpu && strcasecmp (a->cpu, "pic18") == 0) {
  res = pic_pic18_disassemble (op, opbuf, b, l);
 }
 r_asm_op_set_asm (op, opstr);
 return op->size = res;
}
