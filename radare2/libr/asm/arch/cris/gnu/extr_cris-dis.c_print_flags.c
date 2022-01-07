
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cris_disasm_data {scalar_t__ distype; } ;


 scalar_t__ cris_dis_v32 ;

__attribute__((used)) static char *
print_flags (struct cris_disasm_data *disdata, unsigned int insn, char *cp)
{





  static const char v8_fnames[] = "cvznxibm";
  static const char v32_fnames[] = "cvznxiup";
  const char *fnames
    = disdata->distype == cris_dis_v32 ? v32_fnames : v8_fnames;

  unsigned char flagbits = (((insn >> 8) & 0xf0) | (insn & 15));
  int i;

  for (i = 0; i < 8; i++) {
   if (flagbits & (1 << i)) {
    *cp++ = fnames[i];
   }
  }

  return cp;
}
