
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
typedef int FILE ;


 unsigned int ARRAY_SIZE (TYPE_1__*) ;
 char* _ (char*) ;
 int fprintf (int *,char*,...) ;
 TYPE_1__* mips_abi_choices ;
 TYPE_1__* mips_arch_choices ;

void
print_mips_disassembler_options (FILE *stream)
{
  unsigned int i;

  fprintf (stream, _("\nThe following MIPS specific disassembler options are supported for use\nwith the -M switch (multiple options should be separated by commas):\n"));



  fprintf (stream, _("\n  gpr-names=ABI            Print GPR names according to  specified ABI.\n                           Default: based on binary being disassembled.\n"));



  fprintf (stream, _("\n  fpr-names=ABI            Print FPR names according to specified ABI.\n                           Default: numeric.\n"));



  fprintf (stream, _("\n  cp0-names=ARCH           Print CP0 register names according to\n                           specified architecture.\n                           Default: based on binary being disassembled.\n"));




  fprintf (stream, _("\n  hwr-names=ARCH           Print HWR names according to specified \n			   architecture.\n                           Default: based on binary being disassembled.\n"));




  fprintf (stream, _("\n  reg-names=ABI            Print GPR and FPR names according to\n                           specified ABI.\n"));



  fprintf (stream, _("\n  reg-names=ARCH           Print CP0 register and HWR names according to\n                           specified architecture.\n"));



  fprintf (stream, _("\n  For the options above, the following values are supported for \"ABI\":\n   "));


  for (i = 0; i < ARRAY_SIZE (mips_abi_choices); i++) {
   fprintf (stream, " %s", mips_abi_choices[i].name);
  }
  fprintf (stream, _("\n"));

  fprintf (stream, _("\n  For the options above, The following values are supported for \"ARCH\":\n   "));


  for (i = 0; i < ARRAY_SIZE (mips_arch_choices); i++) {
   if (*mips_arch_choices[i].name != '\0') {
    fprintf (stream, " %s", mips_arch_choices[i].name);
   }
  }
  fprintf (stream, _("\n"));

  fprintf (stream, _("\n"));
}
