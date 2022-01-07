
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 char* formname ;
 int printf (char*,char*) ;
 int stdout ;

void setform(int argc, const char *argv[])
{

 printf("We only support %s format, sorry.\n", formname);
 (void) fflush(stdout);
 code = -1;
}
