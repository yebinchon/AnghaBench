
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct lh5801_insn_desc {unsigned int format; int opcode; int iclass; } ;
struct lh5801_insn {int type; int fd; int opcode; int* imm; int iclass; } ;


 unsigned int ARRAY_LENGTH (struct lh5801_insn_desc*) ;
 unsigned int LH5801_IFMT_BCH ;
 unsigned int LH5801_IFMT_COND ;
 int LH5801_IFMT_IMMS (unsigned int) ;
 unsigned int LH5801_IFMT_REG_MASK ;
 unsigned int LH5801_IFMT_RREG ;
 unsigned int LH5801_IFMT_VEJ ;
 int lh5801_ifmt_fd_matches (unsigned int,int) ;
 struct lh5801_insn_desc* lh5801_insn_descs ;

int lh5801_decode(struct lh5801_insn *insn, const ut8 *buf, int len) {
 int fd = (buf[0] == 0xfd);
 int type = -1;
 unsigned i;
 struct lh5801_insn_desc desc;

 if (fd) {
  buf++;
  len--;
 }

 if (len == 0)
  return 0;


 for (i = 0; i < ARRAY_LENGTH(lh5801_insn_descs); i++) {
  ut8 byte = *buf;
  unsigned fmt;
  unsigned ifmt_reg;

  desc = lh5801_insn_descs[i];
  fmt = desc.format;
  ifmt_reg = fmt & LH5801_IFMT_REG_MASK;

  if(!lh5801_ifmt_fd_matches(fmt, fd))
   continue;


  if (ifmt_reg == LH5801_IFMT_RREG && (byte >> 4) % 4 == 3)
   continue;


  if (ifmt_reg == LH5801_IFMT_RREG)
   byte &= 0xcf;
  if (fmt & LH5801_IFMT_COND)
   byte &= 0xf1;
  if (fmt & LH5801_IFMT_BCH)
   byte &= 0xef;

  if (byte == desc.opcode) {
   type = i;
   break;
  }



  if (fmt & LH5801_IFMT_VEJ) {
   if (!(byte & 1) && byte >= 0xc0 && byte <= 0xf6) {
    type = i;
    break;
   }
  }
 }
 if (type == -1)
  return -1;


 insn->iclass = desc.iclass;
 insn->type = type;
 insn->fd = fd;
 insn->opcode = buf[0];
 switch (LH5801_IFMT_IMMS(desc.format)) {
 case 3: insn->imm[2] = buf[3];
 case 2: insn->imm[1] = buf[2];
 case 1: insn->imm[0] = buf[1];
 }


 return fd + 1 + LH5801_IFMT_IMMS(desc.format);
}
