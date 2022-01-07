
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xtensa_insnbuf ;


 int Field_op0_Slot_inst16a_get (int const) ;

__attribute__((used)) static int
Slot_inst16a_decode (const xtensa_insnbuf insn)
{
  switch (Field_op0_Slot_inst16a_get (insn))
    {
    case 8:
      return 31;
    case 9:
      return 36;
    case 10:
      return 26;
    case 11:
      return 27;
    }
  return 0;
}
