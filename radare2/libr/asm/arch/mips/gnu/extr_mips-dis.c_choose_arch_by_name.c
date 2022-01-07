
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mips_arch_choice {int name; } ;


 unsigned int ARRAY_SIZE (struct mips_arch_choice*) ;
 struct mips_arch_choice* mips_arch_choices ;
 unsigned int strlen (int ) ;
 scalar_t__ strncmp (int ,char const*,unsigned int) ;

__attribute__((used)) static const struct mips_arch_choice *
choose_arch_by_name (const char *name, unsigned int namelen)
{
  const struct mips_arch_choice *c = ((void*)0);
  unsigned int i;

  for (i = 0, c = ((void*)0); i < ARRAY_SIZE (mips_arch_choices) && !c; i++) {
   if (strncmp (mips_arch_choices[i].name, name, namelen) == 0 && strlen (mips_arch_choices[i].name) == namelen) {
    c = &mips_arch_choices[i];
   }
  }

  return c;
}
