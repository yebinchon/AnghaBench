
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 char* onoff (int) ;
 int passivemode ;
 int printf (char*,char*) ;
 int stdout ;

void setpassive(int argc, const char *argv[])
{
 passivemode = !passivemode;
 printf("Passive mode %s.\n", onoff(passivemode));
 (void) fflush(stdout);
 code = passivemode;
}
