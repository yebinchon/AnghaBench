
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cris_opcode {scalar_t__ match; int applicable_version; unsigned int lose; int args; int * name; } ;
struct cris_disasm_data {scalar_t__ distype; } ;
typedef int rest_prefixes ;
typedef int opc_table ;
typedef int dip_prefixes ;
typedef int bdapq_m4_prefixes ;
typedef int bdapq_m2_prefixes ;
typedef int bdapq_m1_prefixes ;


 scalar_t__ BDAP_QUICK_OPCODE ;
 scalar_t__ DIP_OPCODE ;
 unsigned int NO_CRIS_PREFIX ;
 int abort () ;
 struct cris_opcode** calloc (int,int) ;
 int cris_constraint (int ,unsigned int,unsigned int,struct cris_disasm_data*) ;
 scalar_t__ cris_dis_v32 ;
 struct cris_opcode* cris_opcodes ;
 int number_of_bits (int) ;

__attribute__((used)) static const struct cris_opcode *
get_opcode_entry (unsigned int insn,
    unsigned int prefix_insn,
    struct cris_disasm_data *disdata)
{


  static const struct cris_opcode **opc_table = ((void*)0);

  const struct cris_opcode *max_matchedp = ((void*)0);
  const struct cris_opcode **prefix_opc_table = ((void*)0);


  static const struct cris_opcode **dip_prefixes = ((void*)0);
  static const struct cris_opcode **bdapq_m1_prefixes = ((void*)0);
  static const struct cris_opcode **bdapq_m2_prefixes = ((void*)0);
  static const struct cris_opcode **bdapq_m4_prefixes = ((void*)0);
  static const struct cris_opcode **rest_prefixes = ((void*)0);


  if (!opc_table)
    {
      opc_table = calloc (65536, sizeof (opc_table[0]));
      if (!opc_table) {
       return ((void*)0);
      }

      dip_prefixes
 = calloc (65536, sizeof (dip_prefixes[0]));
      if (!dip_prefixes) {
       return ((void*)0);
      }

      bdapq_m1_prefixes
 = calloc (65536, sizeof (bdapq_m1_prefixes[0]));
      if (!bdapq_m1_prefixes) {
       return ((void*)0);
      }

      bdapq_m2_prefixes
 = calloc (65536, sizeof (bdapq_m2_prefixes[0]));
      if (!bdapq_m2_prefixes) {
       return ((void*)0);
      }

      bdapq_m4_prefixes
 = calloc (65536, sizeof (bdapq_m4_prefixes[0]));
      if (!bdapq_m4_prefixes) {
       return ((void*)0);
      }

      rest_prefixes
 = calloc (65536, sizeof (rest_prefixes[0]));
      if (!rest_prefixes) {
       return ((void*)0);
      }
    }







  if (prefix_insn != NO_CRIS_PREFIX)
    {
      const struct cris_opcode *popcodep
 = (opc_table[prefix_insn] != ((void*)0)
    ? opc_table[prefix_insn]
    : get_opcode_entry (prefix_insn, NO_CRIS_PREFIX, disdata));

      if (!popcodep) {
       return ((void*)0);
      }

      if (popcodep->match == BDAP_QUICK_OPCODE)
 {


   int offset = (prefix_insn & 255);

   if (offset > 127) {
    offset -= 256;
   }

   switch (offset)
     {
     case -4:
       prefix_opc_table = bdapq_m4_prefixes;
       break;

     case -2:
       prefix_opc_table = bdapq_m2_prefixes;
       break;

     case -1:
       prefix_opc_table = bdapq_m1_prefixes;
       break;

     default:
       prefix_opc_table = rest_prefixes;
       break;
     }
      } else if (popcodep->match == DIP_OPCODE) {


       prefix_opc_table = dip_prefixes;
      } else {
       prefix_opc_table = rest_prefixes;
      }
    }

    if (prefix_insn != NO_CRIS_PREFIX && prefix_opc_table[insn] != ((void*)0)) {
     max_matchedp = prefix_opc_table[insn];
    } else if (prefix_insn == NO_CRIS_PREFIX && opc_table[insn] != ((void*)0)) {
     max_matchedp = opc_table[insn];
    } else {
     const struct cris_opcode *opcodep;
     int max_level_of_match = -1;

     for (opcodep = cris_opcodes;
      opcodep->name != ((void*)0);
      opcodep++) {
      int level_of_match;

      if (disdata->distype == cris_dis_v32) {
       switch (opcodep->applicable_version) {
       case 129:
        break;

       case 138:
       case 139:
       case 134:
       case 140:
       case 131:
       case 137:
       case 128:
        continue;

       case 133:
       case 130:
       case 136:
       case 135:
        break;

       case 132:
        abort ();
       default:
        abort ();
       }
      } else {
       switch (opcodep->applicable_version) {
       case 129:
       case 138:
       case 133:
       case 139:
       case 130:
       case 131:
       case 137:
       case 140:
       case 136:
       case 128:
        break;

       case 135:
        continue;

       case 132:
        abort ();
       default:
        abort ();
       }
      }







      if ((opcodep->match & insn) == opcodep->match && (opcodep->lose & insn) == 0 && ((level_of_match = cris_constraint (opcodep->args, insn, prefix_insn, disdata)) >= 0) && ((level_of_match += 2 * number_of_bits (opcodep->match | opcodep->lose)) > max_level_of_match)) {
       max_matchedp = opcodep;
       max_level_of_match = level_of_match;



       if (level_of_match >= 2 * 16) {
        break;
       }
      }
  }







  if (prefix_insn == NO_CRIS_PREFIX) {
   opc_table[insn] = max_matchedp;
  } else {
   prefix_opc_table[insn] = max_matchedp;
  }
    }

  return max_matchedp;
}
