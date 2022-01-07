
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int * fs; } ;
typedef TYPE_1__ LexState ;
typedef int FuncState ;
typedef int BlockCnt ;


 int TK_DO ;
 int TK_END ;
 int TK_WHILE ;
 int block (TYPE_1__*) ;
 int check_match (TYPE_1__*,int ,int ,int) ;
 int checknext (TYPE_1__*,int ) ;
 int cond (TYPE_1__*) ;
 int enterblock (int *,int *,int) ;
 int leaveblock (int *) ;
 int luaK_getlabel (int *) ;
 int luaK_jump (int *) ;
 int luaK_patchlist (int *,int ,int) ;
 int luaK_patchtohere (int *,int) ;
 int luaX_next (TYPE_1__*) ;

__attribute__((used)) static void whilestat (LexState *ls, int line) {

  FuncState *fs = ls->fs;
  int whileinit;
  int condexit;
  BlockCnt bl;
  luaX_next(ls);
  whileinit = luaK_getlabel(fs);
  condexit = cond(ls);
  enterblock(fs, &bl, 1);
  checknext(ls, TK_DO);
  block(ls);
  luaK_patchlist(fs, luaK_jump(fs), whileinit);
  check_match(ls, TK_END, TK_WHILE, line);
  leaveblock(fs);
  luaK_patchtohere(fs, condexit);
}
