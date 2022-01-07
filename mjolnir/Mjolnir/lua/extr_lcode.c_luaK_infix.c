
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int expdesc ;
typedef int FuncState ;
typedef int BinOpr ;
 int luaK_exp2RK (int *,int *) ;
 int luaK_exp2nextreg (int *,int *) ;
 int luaK_goiffalse (int *,int *) ;
 int luaK_goiftrue (int *,int *) ;
 int tonumeral (int *,int *) ;

void luaK_infix (FuncState *fs, BinOpr op, expdesc *v) {
  switch (op) {
    case 141: {
      luaK_goiftrue(fs, v);
      break;
    }
    case 132: {
      luaK_goiffalse(fs, v);
      break;
    }
    case 137: {
      luaK_exp2nextreg(fs, v);
      break;
    }
    case 142: case 128:
    case 133: case 136: case 135:
    case 134: case 131:
    case 140: case 139: case 138:
    case 130: case 129: {
      if (!tonumeral(v, ((void*)0)))
        luaK_exp2RK(fs, v);

      break;
    }
    default: {
      luaK_exp2RK(fs, v);
      break;
    }
  }
}
