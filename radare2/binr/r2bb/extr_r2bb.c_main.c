
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cmd; } ;


 TYPE_1__* bbcmds ;
 int printf (char*,char*) ;
 int run (int,char const*) ;
 int strcmp (char*,char*) ;

int main(int argc, char **argv) {
 int i;
 for (i = 0; bbcmds[i].cmd; i++) {
  if (!strcmp (bbcmds[i].cmd, argv[0])) {
   const char *arg = argc > 1? argv[1]: ((void*)0);
   return run (i, arg);
  }
 }
 if (argc > 1) {
  for (i = 0; bbcmds[i].cmd; i++) {
   if (!strcmp (bbcmds[i].cmd, argv[1])) {
    const char *arg = argc > 2? argv[2]: ((void*)0);
    return run (i, arg);
   }
  }
 }
 for (i = 0; bbcmds[i].cmd; i++) {
  printf ("%s\n", bbcmds[i].cmd);
 }
 return 1;
}
