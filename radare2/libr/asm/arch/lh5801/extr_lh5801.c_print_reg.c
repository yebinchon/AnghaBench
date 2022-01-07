
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lh5801_insn_desc {int format; } ;
struct lh5801_insn {size_t type; int opcode; int fd; } ;



 int LH5801_IFMT_FD_MOD ;

 int LH5801_IFMT_REG_MASK ;




 int LH5801_IFMT_RMODE (int) ;

 struct lh5801_insn_desc* lh5801_insn_descs ;

__attribute__((used)) static char *print_reg(char *buf, const struct lh5801_insn *insn) {
 const struct lh5801_insn_desc desc = lh5801_insn_descs[insn->type];
 unsigned regnr = (insn->opcode >> 4) & 3;
 const char names[] = "xyu";
 char *saved_buf = buf;


 switch(desc.format & LH5801_IFMT_REG_MASK) {
  case 134: return "a";
  case 128: return "s";
  case 133: return "p";
 }

 if (regnr == 3)
  return "invalid";
 else switch (LH5801_IFMT_RMODE(desc.format)) {
 case 132:
  buf[0] = names[regnr];
  buf[1] = '\0';
  break;
 case 130:
 case 131:
  buf[0] = names[regnr];
  buf[1] = (desc.format & 130)? 'l':'h';
  buf[2] = '\0';
  break;
 case 129:
  if (desc.format & LH5801_IFMT_FD_MOD) {
   if (insn->fd)
    *(buf++) = '#';
   buf[0] = '(';
   buf[1] = names[regnr];
   buf[2] = ')';
   buf[3] = '\0';
  } else {
   return ((void*)0);
  }
  break;
 default:
  return ((void*)0);
 }
 return saved_buf;
}
