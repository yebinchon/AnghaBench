
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xtensa_insnbuf ;


 int Field_combined3e2c5767_fld11_Slot_xt_flix64_slot0_get (int const) ;
 scalar_t__ Field_combined3e2c5767_fld49xt_flix64_slot0_Slot_xt_flix64_slot0_get (int const) ;
 int Field_combined3e2c5767_fld7_Slot_xt_flix64_slot0_get (int const) ;
 int Field_combined3e2c5767_fld8_Slot_xt_flix64_slot0_get (int const) ;
 int Field_combined3e2c5767_fld9_Slot_xt_flix64_slot0_get (int const) ;
 int Field_op0_xt_flix64_slot0_Slot_xt_flix64_slot0_get (int const) ;
 int Field_op0_xt_flix64_slot0_s3_Slot_xt_flix64_slot0_get (int const) ;
 int Field_op1_Slot_xt_flix64_slot0_get (int const) ;
 int Field_op2_Slot_xt_flix64_slot0_get (int const) ;
 int Field_r_Slot_xt_flix64_slot0_get (int const) ;
 int Field_s_Slot_xt_flix64_slot0_get (int const) ;
 scalar_t__ Field_sae4_Slot_xt_flix64_slot0_get (int const) ;
 int Field_t_Slot_xt_flix64_slot0_get (int const) ;
 int Field_thi3_Slot_xt_flix64_slot0_get (int const) ;

__attribute__((used)) static int
Slot_xt_flix64_slot0_decode (const xtensa_insnbuf insn)
{
  switch (Field_op0_xt_flix64_slot0_Slot_xt_flix64_slot0_get (insn))
    {
    case 0:
     if (Field_combined3e2c5767_fld7_Slot_xt_flix64_slot0_get (insn) == 2) {
      return 78;
     }
     switch (Field_op1_Slot_xt_flix64_slot0_get (insn)) {
     case 0:
      switch (Field_op2_Slot_xt_flix64_slot0_get (insn)) {
      case 0:
       if (Field_r_Slot_xt_flix64_slot0_get (insn) == 2) {
        if (Field_s_Slot_xt_flix64_slot0_get (insn) == 0) {
         if (Field_t_Slot_xt_flix64_slot0_get (insn) == 15) {
          return 97;
         }
        }
       }
       break;
      case 1:
       return 49;
      case 2:
       return 50;
      case 3:
       return 51;
      case 4:
       switch (Field_r_Slot_xt_flix64_slot0_get (insn)) {
       case 0:
        if (Field_t_Slot_xt_flix64_slot0_get (insn) == 0) {
         return 102;
        }
        break;
       case 1:
        if (Field_t_Slot_xt_flix64_slot0_get (insn) == 0) {
         return 103;
        }
        break;
       case 2:
        if (Field_t_Slot_xt_flix64_slot0_get (insn) == 0) {
         return 104;
        }
        break;
       case 3:
        if (Field_t_Slot_xt_flix64_slot0_get (insn) == 0) {
         return 105;
        }
        break;
       case 4:
        if (Field_thi3_Slot_xt_flix64_slot0_get (insn) == 0) {
         return 106;
        }
        break;
       case 14:
        return 448;
       case 15:
        return 449;
       }
       break;
      case 6:
       switch (Field_s_Slot_xt_flix64_slot0_get (insn)) {
       case 0:
        return 95;
       case 1:
        return 96;
       }
       break;
      case 8:
       return 41;
      case 9:
       return 43;
      case 10:
       return 44;
      case 11:
       return 45;
      case 12:
       return 42;
      case 13:
       return 46;
      case 14:
       return 47;
      case 15:
       return 48;
      }
      break;
     case 1:
      if (Field_combined3e2c5767_fld11_Slot_xt_flix64_slot0_get (insn) == 1) {
       return 112;
      }
      if (Field_combined3e2c5767_fld9_Slot_xt_flix64_slot0_get (insn) == 0) {
       return 111;
      }
      switch (Field_op2_Slot_xt_flix64_slot0_get (insn)) {
      case 4:
       return 113;
      case 8:
       return 108;
      case 9:
       if (Field_s_Slot_xt_flix64_slot0_get (insn) == 0) {
        return 109;
       }
       break;
      case 10:
       if (Field_t_Slot_xt_flix64_slot0_get (insn) == 0) {
        return 107;
       }
       break;
      case 11:
       if (Field_s_Slot_xt_flix64_slot0_get (insn) == 0) {
        return 110;
       }
       break;
      case 12:
       return 296;
      case 13:
       return 297;
      }
      break;
     case 2:
      if (Field_op2_Slot_xt_flix64_slot0_get (insn) == 8) {
       return 461;
      }
      break;
     case 3:
      switch (Field_op2_Slot_xt_flix64_slot0_get (insn)) {
      case 2:
       return 450;
      case 3:
       return 443;
      case 4:
       return 444;
      case 5:
       return 445;
      case 6:
       return 446;
      case 7:
       return 447;
      case 8:
       return 91;
      case 9:
       return 92;
      case 10:
       return 93;
      case 11:
       return 94;
      }
      break;
 }
      break;
    case 2:
      switch (Field_r_Slot_xt_flix64_slot0_get (insn))
 {
 case 0:
   return 86;
 case 1:
   return 82;
 case 2:
   return 84;
 case 4:
   return 101;
 case 5:
   return 99;
 case 6:
   return 100;
 case 9:
   return 83;
 case 10:
   return 90;
 case 12:
   return 39;
 case 13:
   return 40;
 }
      break;
    }
    if (Field_op0_xt_flix64_slot0_s3_Slot_xt_flix64_slot0_get (insn) == 1) {
     return 85;
    }
    if (Field_sae4_Slot_xt_flix64_slot0_get (insn) == 0 &&
     Field_combined3e2c5767_fld8_Slot_xt_flix64_slot0_get (insn) == 3 &&
     Field_op0_xt_flix64_slot0_s3_Slot_xt_flix64_slot0_get (insn) == 0 &&
     Field_combined3e2c5767_fld49xt_flix64_slot0_Slot_xt_flix64_slot0_get (insn) == 0) {
     return 32;
    }
    return 0;
}
