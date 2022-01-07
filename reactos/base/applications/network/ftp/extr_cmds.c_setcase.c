
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 int mcase ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int stdout ;

void setcase(int argc, const char *argv[])
{
 mcase = !mcase;
 printf("Case mapping %s.\n", onoff(mcase));
 (void) fflush(stdout);
 code = mcase;
}
