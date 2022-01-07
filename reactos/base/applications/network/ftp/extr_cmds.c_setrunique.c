
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int runique ;
 int stdout ;

void setrunique(int argc, const char *argv[])
{
 runique = !runique;
 printf("Receive unique %s.\n", onoff(runique));
 (void) fflush(stdout);
 code = runique;
}
