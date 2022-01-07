
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 char* _ (char*) ;
 int fprintf (int *,char*) ;

void
print_aarch64_disassembler_options (FILE *stream)
{
  fprintf (stream, _("\nThe following AARCH64 specific disassembler options are supported for use\nwith the -M switch (multiple options should be separated by commas):\n"));



  fprintf (stream, _("\n  no-aliases         Don't print instruction aliases.\n"));


  fprintf (stream, _("\n  aliases            Do print instruction aliases.\n"));


  fprintf (stream, _("\n  no-notes         Don't print instruction notes.\n"));


  fprintf (stream, _("\n  notes            Do print instruction notes.\n"));







  fprintf (stream, _("\n"));
}
