
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xtensa_insnbuf ;


 int Field_i_Slot_inst16b_get (int const) ;
 int Field_op0_Slot_inst16b_get (int const) ;
 int Field_r_Slot_inst16b_get (int const) ;
 int Field_s_Slot_inst16b_get (int const) ;
 int Field_t_Slot_inst16b_get (int const) ;
 int Field_z_Slot_inst16b_get (int const) ;

__attribute__((used)) static int
Slot_inst16b_decode (const xtensa_insnbuf insn)
{
  switch (Field_op0_Slot_inst16b_get (insn))
    {
    case 12:
      switch (Field_i_Slot_inst16b_get (insn))
 {
 case 0:
   return 33;
 case 1:
   switch (Field_z_Slot_inst16b_get (insn))
     {
     case 0:
       return 28;
     case 1:
       return 29;
     }
   break;
 }
      break;
    case 13:
      switch (Field_r_Slot_inst16b_get (insn))
 {
 case 0:
   return 32;
 case 15:
   switch (Field_t_Slot_inst16b_get (insn))
     {
     case 0:
       return 35;
     case 1:
       return 15;
     case 2:
       return 325;
     case 3:
      if (Field_s_Slot_inst16b_get (insn) == 0) {
       return 34;
      }
      break;
     case 6:
      if (Field_s_Slot_inst16b_get (insn) == 0) {
       return 30;
      }
      break;
     }
   break;
 }
      break;
    }
  return 0;
}
