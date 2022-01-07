
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 char* ctime (int *) ;
 int exit (int) ;
 int printf (char*,...) ;
 int time (int *) ;

__attribute__((used)) static void err_msg(char *msg)
{

 time_t now;
 time(&now);
 printf("=================================\n");
 printf("    Error: %s\n", msg);
 printf("    %s", ctime(&now));
 printf("=================================\n");
 exit(1);
}
