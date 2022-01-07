
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cris_spec_reg {unsigned int reg_size; } ;
struct cris_opcode {int match; } ;
struct cris_disasm_data {int distype; } ;


 int BDAP_QUICK_OPCODE ;
 int DIP_OPCODE ;
 unsigned int NO_CRIS_PREFIX ;
 int cris_dis_v0_v10 ;
 struct cris_opcode* get_opcode_entry (unsigned int,unsigned int,struct cris_disasm_data*) ;
 struct cris_spec_reg* spec_reg_info (unsigned int,int ) ;

__attribute__((used)) static int
cris_constraint (const char *cs,
   unsigned int insn,
   unsigned int prefix_insn,
   struct cris_disasm_data *disdata)
{
  int retval = 0;
  int tmp;
  int prefix_ok = 0;
  const char *s;

  for (s = cs; *s; s++) {
   switch (*s) {
   case '!':


    if (prefix_insn != NO_CRIS_PREFIX || disdata->distype != cris_dis_v0_v10) {
     return -1;
    }
    break;

   case 'U':

    return -1;

   case 'M':




    tmp = ((insn >> 12) & 0xf);
    if (tmp != 0 && tmp != 4 && tmp != 8) {
     return -1;
    }
    break;

   case 'm':
    if ((insn & 0x30) == 0x30) {
     return -1;
    }
    break;

   case 'S':

    if (prefix_insn != NO_CRIS_PREFIX && (insn & 0x400) == 0) {
     prefix_ok = 1;
     break;
    } else {
     return -1;
    }

   case 's':
   case 'y':
   case 'Y':


    if (prefix_insn != NO_CRIS_PREFIX) {
     if (insn & 0x400) {
      const struct cris_opcode *prefix_opcodep = get_opcode_entry (prefix_insn, NO_CRIS_PREFIX, disdata);

      if (prefix_opcodep->match == DIP_OPCODE) {
       return -1;
      }
     }

     prefix_ok = 1;
    }
    break;

   case 'B':

    prefix_ok = 1;



    if (prefix_insn != NO_CRIS_PREFIX) {

     const struct cris_opcode *prefix_opcodep = get_opcode_entry (prefix_insn, NO_CRIS_PREFIX, disdata);

     if (prefix_opcodep->match == BDAP_QUICK_OPCODE) {
      int pushsize = (prefix_insn & 255);

      if (pushsize > 127) {
       pushsize -= 256;
      }

      if (s[1] == 'P') {
       unsigned int spec_reg = (insn >> 12) & 15;
       const struct cris_spec_reg *sregp = spec_reg_info (spec_reg, disdata->distype);



       if (sregp && sregp->reg_size == (unsigned int)-pushsize) {
        break;
       }
      } else if (s[1] == 'R') {
       if ((insn & 0x30) == 0x20 && pushsize == -4) {
        break;
       }
      }


     }
    }
    return -1;

   case 'D':
    retval = (((insn >> 12) & 15) == (insn & 15));
    if (!retval) {
     return -1;
    } else {
     retval += 4;
    }
    break;

   case 'P': {
    const struct cris_spec_reg *sregp = spec_reg_info ((insn >> 12) & 15, disdata->distype);
    if (sregp != ((void*)0)) {
     retval += 3;
     break;
    } else {
     return -1;
    }
   }
   }
  }

  if (prefix_insn != NO_CRIS_PREFIX && !prefix_ok) {
   return -1;
  }

  return retval;
}
