
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 char* modename ;
 int printf (char*,char*) ;
 int stdout ;

void fsetmode(int argc, const char *argv[])
{

 printf("We only support %s mode, sorry.\n", modename);
 (void) fflush(stdout);
 code = -1;
}
