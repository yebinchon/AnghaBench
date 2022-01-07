
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cris_spec_reg {unsigned int number; int applicable_version; int warning; int * name; } ;
typedef enum cris_disass_family { ____Placeholder_cris_disass_family } cris_disass_family ;


 int cris_dis_v32 ;
 struct cris_spec_reg const* cris_spec_regs ;







__attribute__((used)) static const struct cris_spec_reg *
spec_reg_info (unsigned int sreg, enum cris_disass_family distype)
{
  int i;

  for (i = 0; cris_spec_regs[i].name != ((void*)0); i++)
    {
      if (cris_spec_regs[i].number == sreg)
 {
       if (distype == cris_dis_v32) {
        switch (cris_spec_regs[i].applicable_version) {
        case 128:
        case 129:
        case 131:
        case 130:
        case 133:
        case 132:

         if (!cris_spec_regs[i].warning) {
          return &cris_spec_regs[i];
         }
        default:;
        }
       } else if (cris_spec_regs[i].applicable_version != 132) {
        return &cris_spec_regs[i];
       }
 }
    }

  return ((void*)0);
}
