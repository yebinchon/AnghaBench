
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ut8 ;
typedef int ut16 ;
typedef int index ;
struct TYPE_5__ {int n; int c; scalar_t__ sign; } ;
typedef TYPE_1__ ebc_index_t ;
struct TYPE_6__ {int operands; int instr; } ;
typedef TYPE_2__ ebc_command_t ;


 int CHK_SNPRINTF (int ,int ,char*,char*,unsigned int,char*,unsigned int,char*) ;
 size_t EBC_ADD ;
 int EBC_INSTR_MAXLEN ;
 int EBC_OPERANDS_MAXLEN ;
 scalar_t__ TEST_BIT (int const,int) ;
 int decode_index16 (int const*,TYPE_1__*) ;
 char** instr_names ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int decode_add(const ut8 *bytes, ebc_command_t *cmd) {
 char sign;
 int ret = 2;
 unsigned bits = TEST_BIT (bytes[0], 6)? 64: 32;
 unsigned op1, op2;
 char index[32] = {0};
 ut16 immed;

 snprintf (cmd->instr, EBC_INSTR_MAXLEN, "%s%u", instr_names[EBC_ADD],
   bits);

 op1 = bytes[1] & 0x07;
 op2 = (bytes[1] >> 4) & 0x07;

 if (TEST_BIT (bytes[0], 7)) {
  ret = 4;
  if (TEST_BIT (bytes[1], 7)) {
   ebc_index_t idx;
   decode_index16(bytes + 2, &idx);
   sign = idx.sign ? '+' : '-';
   snprintf(index, sizeof (index),
    " (%c%d, %c%d)", sign, idx.n, sign, idx.c);
  } else {
   immed = *(ut16*)&bytes[2];
   snprintf (index, sizeof (index), "(%u)", immed);
  }
 }

 CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN, "%sr%d, %sr%d%s",
  TEST_BIT (bytes[1], 3) ? "@" : "", op1,
  TEST_BIT (bytes[1], 7) ? "@" : "", op2, index);
 return ret;
}
