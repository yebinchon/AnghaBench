
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef unsigned long ut64 ;
typedef int ut32 ;
struct TYPE_5__ {int c; int n; scalar_t__ sign; } ;
typedef TYPE_1__ ebc_index_t ;
struct TYPE_6__ {int instr; int operands; } ;
typedef TYPE_2__ ebc_command_t ;


 int CHK_SNPRINTF (int ,int ,char*,int,...) ;
 size_t EBC_CALL ;
 int EBC_INSTR_MAXLEN ;
 int EBC_OPERANDS_MAXLEN ;
 scalar_t__ TEST_BIT (int const,int) ;
 int decode_index32 (int const*,TYPE_1__*) ;
 int * instr_names ;
 int snprintf (int ,int ,char*,int) ;

__attribute__((used)) static int decode_call(const ut8 *bytes, ebc_command_t *cmd) {
 int ret;
 short bits = 32;
 ut8 op1 = bytes[1] & 0x7;
 ut32 i1;
 unsigned long i2;
 ebc_index_t idx32;
 char sign;

 if (!TEST_BIT (bytes[0], 6)) {

  bits = 32;
  ret = 2;
  if (TEST_BIT (bytes[1], 3)) {

   if (TEST_BIT (bytes[0], 7)) {

    decode_index32 (bytes + 2, &idx32);
    sign = idx32.sign ? '+' : '-';

    CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN,
     "@r%d(%c%u, %c%u)",
     op1, sign, idx32.n, sign, idx32.c);
    ret = 6;
   } else {
    snprintf (cmd->operands, EBC_OPERANDS_MAXLEN,
     "@r%d", op1);
   }
  } else {

   if (TEST_BIT (bytes[0], 7)) {

    i1 = *(ut32 *)(bytes + 2);
    CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN,
     "r%d(0x%x)", op1, i1);
    ret = 6;
   } else {

    CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN,
     "r%d", op1);
   }
  }
 } else {
  bits = 64;
  ret = 10;
  i2 = *(ut64 *)&bytes[2];
  CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN, "0x%lx", i2);
 }
 CHK_SNPRINTF (cmd->instr, EBC_INSTR_MAXLEN, "%s%d%s%s",
  instr_names[EBC_CALL], bits,
  TEST_BIT (bytes[1], 5) ? "ex" : "",
  TEST_BIT (bytes[1], 4) ? "" : "a");
 return ret;
}
