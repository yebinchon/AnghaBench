
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int crflag ;
 int fflush (int ) ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int stdout ;

void setcr(int argc, const char *argv[])
{
 crflag = !crflag;
 printf("Carriage Return stripping %s.\n", onoff(crflag));
 (void) fflush(stdout);
 code = crflag;
}
