
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int doglob ;
 int fflush (int ) ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int stdout ;

void setglob(int argc, const char *argv[])
{

 doglob = !doglob;
 printf("Globbing %s.\n", onoff(doglob));
 (void) fflush(stdout);
 code = doglob;
}
