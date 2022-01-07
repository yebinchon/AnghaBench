
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int arc_insn ;



int
ac_get_load_sdasym_insn_type (arc_insn insn, int compact_insn_16)
{
  int load_type = -1;


  if (compact_insn_16)
    {
      switch (insn & 0xfe00)
 {

 case 0xc800:
   load_type = 10;
   break;


 case 0xca00:
   load_type = 11;
   break;


 case 0xcc00:
   load_type = 12;
   break;
 }
    }
  else
    {

      switch (insn & 0xf8000180)
 {

 case 0x10000000:
  if (((insn >> 9) & 3) == 3) {
   load_type = 0;
  } else {
   load_type = 1;
  }
  break;


 case 0x10000100:
  if (((insn >> 9) & 3) == 3) {
   load_type = 2;
  } else {
   load_type = 1;
  }
  break;


 case 0x10000080:
   load_type = 1;
   break;

 }
    }

  return load_type;
}
