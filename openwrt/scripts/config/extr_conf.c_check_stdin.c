
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int exit (int) ;
 int printf (char*,char*) ;
 int valid_stdin ;

__attribute__((used)) static void check_stdin(void)
{
 if (!valid_stdin) {
         printf("%s",_("aborted!\n\n"));
  printf("%s",_("Console input/output is redirected. "));
  printf("%s",_("Run 'make oldconfig' to update configuration.\n\n"));
  exit(1);
 }
}
