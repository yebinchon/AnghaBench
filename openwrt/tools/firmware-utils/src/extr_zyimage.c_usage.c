
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int printf (char*,char*) ;

void usage(char *progname)
{
  printf("Usage: %s [ -v Version ] [ -d Device_ID ] <input file>\n", progname);
  exit(1);
}
