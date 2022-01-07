
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bell ;
 int code ;
 int fflush (int ) ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int stdout ;

void setbell(int argc, const char *argv[])
{

 bell = !bell;
 printf("Bell mode %s.\n", onoff(bell));
 (void) fflush(stdout);
 code = bell;
}
