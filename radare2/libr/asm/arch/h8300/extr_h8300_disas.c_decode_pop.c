
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut8 ;
struct h8300_cmd {char* instr; int operands; } ;


 int H8300_INSTR_MAXLEN ;
 int snprintf (int ,int,char*,int const) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int decode_pop(const ut8 *bytes, struct h8300_cmd *cmd)
{
 int ret = 2;
 ut8 tmp = bytes[1] >> 4;

 strncpy(cmd->instr, tmp == 0x7 ? "pop" : "push",
   H8300_INSTR_MAXLEN - 1);
 cmd->instr[H8300_INSTR_MAXLEN - 1] = '\0';


 snprintf(cmd->operands, H8300_INSTR_MAXLEN,
   "r%u", bytes[1] & 0x7);

 return ret;
}
