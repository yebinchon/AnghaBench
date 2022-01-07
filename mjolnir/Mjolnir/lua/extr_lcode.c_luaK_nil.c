
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int pc; int lasttarget; TYPE_1__* f; } ;
struct TYPE_5__ {int * code; } ;
typedef int Instruction ;
typedef TYPE_2__ FuncState ;


 int GETARG_A (int ) ;
 int GETARG_B (int ) ;
 scalar_t__ GET_OPCODE (int ) ;
 scalar_t__ OP_LOADNIL ;
 int SETARG_A (int ,int) ;
 int SETARG_B (int ,int) ;
 int luaK_codeABC (TYPE_2__*,scalar_t__,int,int,int ) ;

void luaK_nil (FuncState *fs, int from, int n) {
  Instruction *previous;
  int l = from + n - 1;
  if (fs->pc > fs->lasttarget) {
    previous = &fs->f->code[fs->pc-1];
    if (GET_OPCODE(*previous) == OP_LOADNIL) {
      int pfrom = GETARG_A(*previous);
      int pl = pfrom + GETARG_B(*previous);
      if ((pfrom <= from && from <= pl + 1) ||
          (from <= pfrom && pfrom <= l + 1)) {
        if (pfrom < from) from = pfrom;
        if (pl > l) l = pl;
        SETARG_A(*previous, from);
        SETARG_B(*previous, l - from);
        return;
      }
    }
  }
  luaK_codeABC(fs, OP_LOADNIL, from, n - 1, 0);
}
