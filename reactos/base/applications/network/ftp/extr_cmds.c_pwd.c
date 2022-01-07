
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ERROR ;
 int code ;
 scalar_t__ command (char*) ;
 int fflush (int ) ;
 int printf (char*) ;
 int stdout ;
 int verbose ;

void pwd(int argc, const char *argv[])
{
 int oldverbose = verbose;




 verbose = 1;
 if (command("PWD") == ERROR && code == 500) {
  printf("PWD command not recognized, trying XPWD\n");
  (void) fflush(stdout);
  (void) command("XPWD");
 }
 verbose = oldverbose;
}
