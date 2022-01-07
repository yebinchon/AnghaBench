
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Instruction ;


 int GETARG_B (int ) ;
 int GET_OPCODE (int ) ;




 int check (int) ;

int luaG_checkopenop (Instruction i) {
  switch (GET_OPCODE(i)) {
    case 131:
    case 128:
    case 130:
    case 129: {
      check(GETARG_B(i) == 0);
      return 1;
    }
    default: return 0;
  }
}
