
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_SUCCESS ;
 char* VERSION ;
 int exit (int ) ;
 int printf (char*,char*) ;

void version()
{
 printf("TMON version %s\n", VERSION);
 exit(EXIT_SUCCESS);
}
