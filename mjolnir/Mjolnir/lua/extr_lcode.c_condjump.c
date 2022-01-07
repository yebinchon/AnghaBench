
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OpCode ;
typedef int FuncState ;


 int luaK_codeABC (int *,int ,int,int,int) ;
 int luaK_jump (int *) ;

__attribute__((used)) static int condjump (FuncState *fs, OpCode op, int A, int B, int C) {
  luaK_codeABC(fs, op, A, B, C);
  return luaK_jump(fs);
}
