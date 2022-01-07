
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int exit (int) ;
 int printf (char*) ;

void oferror(FILE *f)
{
 printf("file error\n");
 exit(2);
}
