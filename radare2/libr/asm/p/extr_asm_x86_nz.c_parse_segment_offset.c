
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int offset_sign; int * scale; int offset; int type; int reg; int * regs; } ;
typedef int RAsm ;
typedef TYPE_1__ Operand ;


 int OT_MEMORY ;
 int getnum (int *,char const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void parse_segment_offset(RAsm *a, const char *str, size_t *pos,
  Operand *op, int reg_index) {
 int nextpos = *pos;
 char *c = strchr (str + nextpos, ':');
 if (c) {
  nextpos ++;
  c = strchr (str + nextpos, '[');
  if (c) {nextpos ++;}


  op->regs[reg_index] = op->reg;
  op->type |= OT_MEMORY;
  op->offset_sign = 1;
  char *p = strchr (str + nextpos, '-');
  if (p) {
   op->offset_sign = -1;
   nextpos ++;
  }
  op->scale[reg_index] = getnum (a, str + nextpos);
  op->offset = op->scale[reg_index];
 }
}
