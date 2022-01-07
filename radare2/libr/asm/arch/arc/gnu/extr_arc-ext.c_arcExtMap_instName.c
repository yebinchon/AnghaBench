
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ExtInstruction {int major; unsigned char minor; int flags; char const* name; struct ExtInstruction* next; } ;
struct TYPE_2__ {struct ExtInstruction** instructions; } ;


 int E_ARC_MACH_A4 ;
 size_t INST_HASH (int,unsigned char) ;
 int M ;
 int P ;
 TYPE_1__ arc_extension_map ;

const char *
arcExtMap_instName (int opcode, int insn, int *flags)
{
  unsigned char minor;
  struct ExtInstruction *temp;

  if (*flags != E_ARC_MACH_A4)
    {

      if (0x08 <= opcode && opcode <= 0x0b)
 {

   unsigned char b, c, i;


   b = (insn & 0x0700) >> 8;
   c = (insn & 0x00e0) >> 5;
   i = (insn & 0x001f);

   if (i) {
    minor = i;
   } else {
    minor = (c == 0x07) ? b : c;
   }
 }

      else
 {

   unsigned char I, A, B;



   I = (insn & 0x003f0000) >> 16;
   A = (insn & 0x0000003f);
   B = ((insn & 0x07000000) >> 24) | ((insn & 0x00007000) >> 9);

   if (I != 0x2f)
     {

       switch (P)
  {
  case 3:
    if (M)
      {
        minor = I;
        break;
      }
  case 0:
  case 2:
    minor = (I >> 1) | ((I & 0x1) << 5);
    break;
  case 1:
    minor = (I >> 1) | (I & 0x1) | ((I & 0x2) << 4);
  }



     }
   else
     {
      if (A != 0x3f) {
       minor = A;
      } else {
       minor = B;
      }
     }
 }
  } else {
   minor = insn;
  }

  temp = arc_extension_map.instructions[INST_HASH (opcode, minor)];
  while (temp)
    {
      if ((temp->major == opcode) && (temp->minor == minor))
 {
   *flags = temp->flags;
   return temp->name;
 }
      temp = temp->next;
    }

  return ((void*)0);
}
