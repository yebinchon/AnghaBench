
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errmsg (int ,char*,char) ;
 int * optarg ;

int
required_arg(char c, char *arg)
{
 if ((optarg != ((void*)0)) && (*arg == '-')){
  errmsg(0,"option %c requires an argument\n", c);
  return -1;
 }

 return 0;
}
