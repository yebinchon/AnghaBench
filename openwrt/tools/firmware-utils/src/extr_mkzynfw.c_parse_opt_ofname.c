
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR (char*) ;
 char* ofname ;
 scalar_t__ required_arg (char,char*) ;

int
parse_opt_ofname(char ch, char *arg)
{

 if (ofname != ((void*)0)) {
  ERR("only one output file allowed");
  return -1;
 }

 if (required_arg(ch, arg))
  return -1;

 ofname = arg;

 return 0;
}
