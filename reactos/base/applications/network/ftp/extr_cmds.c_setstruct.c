
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 int printf (char*,char*) ;
 int stdout ;
 char* structname ;

void setstruct(int argc, const char *argv[])
{

 printf("We only support %s structure, sorry.\n", structname);
 (void) fflush(stdout);
 code = -1;
}
