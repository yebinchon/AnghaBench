
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ut8 ;
struct TYPE_7__ {int n; int c; int sign; } ;
typedef TYPE_1__ ebc_index_t ;
struct TYPE_8__ {int operands; } ;
typedef TYPE_2__ ebc_command_t ;


 int CHK_SNPRINTF (int ,int ,char*,char*,char*,char*,char*) ;
 int const EBC_OPCODE_MASK ;
 int EBC_OPERANDS_MAXLEN ;
 scalar_t__ TEST_BIT (int const,int) ;
 int decode_index16 (int const*,TYPE_1__*) ;
 int decode_index32 (int const*,TYPE_1__*) ;
 int decode_index64 (int const*,TYPE_1__*) ;
 int snprintf (char*,int,char*,...) ;

__attribute__((used)) static int decode_mov_args(const ut8 *bytes, ebc_command_t *cmd) {
 int ret = 2;
 unsigned op1, op2;
 char op1c[32], op2c[32];
 char ind1[32] = {0}, ind2[32] = {0};
 ebc_index_t idx;
 char sign;

 op1 = bytes[1] & 0x07;
 op2 = (bytes[1] >> 4) & 0x07;

 snprintf(op1c, 32, "%sr%u", TEST_BIT(bytes[1], 3) ? "@" : "", op1);
 snprintf(op2c, 32, "%sr%u", TEST_BIT(bytes[1], 7) ? "@" : "", op2);

 switch (bytes[0] & EBC_OPCODE_MASK) {
 case 135:
 case 128:
 case 133:
 case 130:
  if (TEST_BIT(bytes[0], 7)) {
   decode_index16(bytes + ret, &idx);
   sign = idx.sign? '+': '-';
   snprintf(ind1, 32,"(%c%u, %c%u)", sign,
     idx.n, sign, idx.c);
   ret += 2;
  }
  if (TEST_BIT(bytes[0], 6)) {
   decode_index16(bytes + ret, &idx);
   sign = idx.sign? '+': '-';
   snprintf(ind2, 32, "(%c%u, %c%u)", sign,
     idx.n, sign, idx.c);
   ret += 2;
  }
  break;
 case 136:
 case 129:
 case 134:
 case 132:
  if (TEST_BIT(bytes[0], 7)) {
   decode_index32(bytes + ret, &idx);
   sign = idx.sign? '+': '-';
   snprintf(ind1, 32, "(%c%u, %c%u)", sign,
     idx.n, sign, idx.c);
   ret += 4;
  }
  if (TEST_BIT(bytes[0], 6)) {
   decode_index32(bytes + ret, &idx);
   sign = idx.sign? '+': '-';
   snprintf(ind2, 32, "(%c%u, %c%u)", sign,
     idx.n, sign, idx.c);
   ret += 4;
  }
  break;
 case 131:
  if (TEST_BIT(bytes[0], 7)) {
   decode_index64(bytes + ret, &idx);
   sign = idx.sign? '+': '-';
   snprintf(ind1, 32, "(%c%u, %c%u)", sign,
     idx.n, sign, idx.c);
   ret += 8;
  }
  if (TEST_BIT(bytes[0], 6)) {
   decode_index64(bytes + ret, &idx);
   sign = idx.sign? '+': '-';
   snprintf(ind1, 32, "(%c%u, %c%u)", sign,
     idx.n, sign, idx.c);
   ret += 8;
  }
  break;
 }

 CHK_SNPRINTF (cmd->operands, EBC_OPERANDS_MAXLEN, "%s%s, %s%s",
  op1c, ind1, op2c, ind2);

 return ret;
}
