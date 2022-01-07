
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* ut64 ;
struct TYPE_5__ {int member_0; } ;
typedef TYPE_1__ formattingOptions ;
typedef int disassembledInstruction ;
typedef int cut8 ;
struct TYPE_6__ {int opcode; void* address; } ;
typedef TYPE_2__ assembledInstruction ;


 scalar_t__ AVR_Long_Address ;
 scalar_t__ AVR_Long_Instruction ;
 scalar_t__ disassembleInstruction (int *,TYPE_2__) ;
 int printDisassembledInstruction (char*,int ,TYPE_1__) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int avrdis (char *out, ut64 addr, cut8 *buf, int len) {
 formattingOptions opt = { 0 };
 disassembledInstruction dins;
 assembledInstruction ins;
 AVR_Long_Instruction = 0;
 AVR_Long_Address = 0;
 if (len < 2) {
  strcpy (out, "truncated");
  return -1;
 }
 ins.address = addr;
 ins.opcode = (buf[0] | buf[1] << 8);
 if (disassembleInstruction (&dins, ins)) {
  strcpy (out, "invalid");
  return -1;
 }
 if (AVR_Long_Instruction) {
  if (len < 4) {
   strcpy (out, "truncated");
   return -1;
  }
  ins.address = addr;

  ins.opcode = (buf[3] << 8) | (buf[2]);




  if (disassembleInstruction (&dins, ins)) {
   strcpy (out, "invalid");
   return -1;
  }
  printDisassembledInstruction (out, dins, opt);
  return 4;
 }
 printDisassembledInstruction (out, dins, opt);

 return 2;
}
