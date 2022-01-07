
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int code ;
 int fflush (int ) ;
 char* onoff (int) ;
 int printf (char*,char*) ;
 int sendport ;
 int stdout ;

void setport(int argc, const char *argv[])
{

 sendport = !sendport;
 printf("Use of PORT cmds %s.\n", onoff(sendport));
 (void) fflush(stdout);
 code = sendport;
}
