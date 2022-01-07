
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mrb_state ;
typedef int listcmd_parser_state ;


 int memset (int *,int ,int) ;
 scalar_t__ mrb_malloc (int *,int) ;

__attribute__((used)) static listcmd_parser_state*
listcmd_parser_state_new(mrb_state *mrb)
{
  listcmd_parser_state *st = (listcmd_parser_state*)mrb_malloc(mrb, sizeof(listcmd_parser_state));
  memset(st, 0, sizeof(listcmd_parser_state));
  return st;
}
