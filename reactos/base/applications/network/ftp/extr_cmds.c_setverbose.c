
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int stdout ;
 int verbose ;

void setverbose(int argc, const char *argv[])
{

 verbose = !verbose;
 printf("Verbose mode %s.\n", onoff(verbose));
 (void) fflush(stdout);
 code = verbose;
}
