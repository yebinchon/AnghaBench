
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* cdr; TYPE_4__* car; } ;
typedef TYPE_2__ node ;
typedef scalar_t__ mrb_bool ;
typedef int codegen_scope ;
struct TYPE_7__ {int car; TYPE_1__* cdr; } ;
struct TYPE_5__ {int cdr; } ;






 int NOVAL ;
 int OP_ARRAY ;
 int OP_STRCAT ;
 int VAL ;
 int codegen (int *,TYPE_4__*,int ) ;
 int cursp () ;
 int gen_intern (int *) ;
 int genop_1 (int *,int ,int ) ;
 int genop_2 (int *,int ,int ,int) ;
 int nint (int ) ;
 int pop () ;
 int pop_n (int) ;
 int push () ;

__attribute__((used)) static void
gen_literal_array(codegen_scope *s, node *tree, mrb_bool sym, int val)
{
  if (val) {
    int i = 0, j = 0;

    while (tree) {
      switch (nint(tree->car->car)) {
      case 128:
        if ((tree->cdr == ((void*)0)) && (nint(tree->car->cdr->cdr) == 0))
          break;

      case 131:
        codegen(s, tree->car, VAL);
        ++j;
        break;

      case 129:
        if (j > 0) {
          j = 0;
          ++i;
          if (sym)
            gen_intern(s);
        }
        break;
      }
      while (j >= 2) {
        pop(); pop();
        genop_1(s, OP_STRCAT, cursp());
        push();
        j--;
      }
      tree = tree->cdr;
    }
    if (j > 0) {
      ++i;
      if (sym)
        gen_intern(s);
    }
    pop_n(i);
    genop_2(s, OP_ARRAY, cursp(), i);
    push();
  }
  else {
    while (tree) {
      switch (nint(tree->car->car)) {
      case 131: case 130:
        codegen(s, tree->car, NOVAL);
      }
      tree = tree->cdr;
    }
  }
}
