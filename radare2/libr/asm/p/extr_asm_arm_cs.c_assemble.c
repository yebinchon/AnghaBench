
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut32 ;
struct TYPE_6__ {int bits; scalar_t__ big_endian; int pc; } ;
struct TYPE_5__ {int buf; } ;
typedef TYPE_1__ RAsmOp ;
typedef TYPE_2__ RAsm ;


 int UT16_MAX ;
 int UT32_MAX ;
 int arm64ass (char const*,int ,int*) ;
 int armass_assemble (char const*,int ,int const) ;
 int eprintf (char*) ;
 int r_strbuf_setbin (int *,int *,int) ;
 int r_write_be16 (int *,int) ;
 int r_write_be32 (int *,int) ;
 int r_write_le16 (int *,int) ;
 int r_write_le32 (int *,int) ;

__attribute__((used)) static int assemble(RAsm *a, RAsmOp *op, const char *buf) {
 const bool is_thumb = (a->bits == 16);
 int opsize;
 ut32 opcode;
 if (a->bits == 64) {
  if (!arm64ass (buf, a->pc, &opcode)) {
   return -1;
  }
 } else {
  opcode = armass_assemble (buf, a->pc, is_thumb);
  if (a->bits != 32 && a->bits != 16) {
   eprintf ("Error: ARM assembler only supports 16 or 32 bits\n");
   return -1;
  }
 }
 if (opcode == UT32_MAX) {
  return -1;
 }
 ut8 opbuf[4];
 if (is_thumb) {
  const int o = opcode >> 16;
  opsize = o > 0? 4: 2;
  if (opsize == 4) {
   if (a->big_endian) {
    r_write_le16 (opbuf, opcode >> 16);
    r_write_le16 (opbuf + 2, opcode & UT16_MAX);
   } else {
    r_write_be32 (opbuf, opcode);
   }
  } else if (opsize == 2) {
   if (a->big_endian) {
    r_write_le16 (opbuf, opcode & UT16_MAX);
   } else {
    r_write_be16 (opbuf, opcode & UT16_MAX);
   }
  }
 } else {
  opsize = 4;
  if (a->big_endian) {
   r_write_le32 (opbuf, opcode);
  } else {
   r_write_be32 (opbuf, opcode);
  }
 }
 r_strbuf_setbin (&op->buf, opbuf, opsize);

 return opsize;
}
