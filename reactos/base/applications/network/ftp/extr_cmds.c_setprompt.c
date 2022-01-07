
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 int interactive ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int stdout ;

void setprompt(int argc, const char *argv[])
{

 interactive = !interactive;
 printf("Interactive mode %s.\n", onoff(interactive));
 (void) fflush(stdout);
 code = interactive;
}
