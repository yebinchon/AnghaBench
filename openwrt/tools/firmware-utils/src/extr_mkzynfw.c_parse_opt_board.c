
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG (int,char*,char,char*) ;
 int ERR (char*,...) ;
 int * board ;
 int * find_board (char*) ;
 scalar_t__ required_arg (char,char*) ;

int
parse_opt_board(char ch, char *arg)
{

 DBG(1,"parsing board option: -%c %s", ch, arg);

 if (board != ((void*)0)) {
  ERR("only one board option allowed");
  return -1;
 }

 if (required_arg(ch, arg))
  return -1;

 board = find_board(arg);
 if (board == ((void*)0)){
  ERR("invalid/unknown board specified: %s", arg);
  return -1;
 }

 return 0;
}
