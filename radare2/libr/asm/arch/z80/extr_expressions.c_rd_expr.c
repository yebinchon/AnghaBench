
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int do_rd_expr (char const**,char,int*,int,int*,int) ;
 int printerr (int ,char*) ;

__attribute__((used)) static int
rd_expr (const char **p, char delimiter, int *valid, int level,
  int print_errors)
{
  int check = 1;
  int result;
  if (valid)
    *valid = 1;
  result = do_rd_expr (p, delimiter, valid, level, &check, print_errors);
  if (print_errors && (!valid || *valid) && check)
    printerr (0, "expression fully enclosed in parenthesis\n");
  return result;
}
