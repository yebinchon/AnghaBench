
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_21__ {struct TYPE_21__* car; struct TYPE_21__* cdr; } ;
typedef TYPE_1__ node ;
struct TYPE_22__ {struct TYPE_22__* prev; } ;
typedef TYPE_2__ codegen_scope ;
 int NOVAL ;
 int OP_NOP ;
 int OP_SETCONST ;
 int OP_SETCV ;
 int OP_SETGV ;
 int OP_SETIV ;
 int OP_SETMCNST ;
 int OP_SETUPVAR ;
 int VAL ;
 int attrsym (TYPE_2__*,int ) ;
 int codegen (TYPE_2__*,TYPE_1__*,int ) ;
 int cursp () ;
 int fprintf (int ,char*,int) ;
 int gen_call (TYPE_2__*,TYPE_1__*,int ,int,int ,int) ;
 int gen_move (TYPE_2__*,int,int,int) ;
 int gen_vmassignment (TYPE_2__*,TYPE_1__*,int,int) ;
 int genop_0 (TYPE_2__*,int ) ;
 int genop_2 (TYPE_2__*,int ,int,int) ;
 int genop_3 (TYPE_2__*,int ,int,int,int) ;
 int lv_idx (TYPE_2__*,int ) ;
 int new_sym (TYPE_2__*,int ) ;
 int nint (TYPE_1__*) ;
 int nsym (TYPE_1__*) ;
 int on_eval (TYPE_2__*) ;
 int pop () ;
 int pop_n (int) ;
 int push () ;
 int stderr ;

__attribute__((used)) static void
gen_assignment(codegen_scope *s, node *tree, int sp, int val)
{
  int idx;
  int type = nint(tree->car);

  tree = tree->cdr;
  switch (type) {
  case 133:
    idx = new_sym(s, nsym(tree));
    genop_2(s, OP_SETGV, sp, idx);
    break;
  case 138:
  case 131:
    idx = lv_idx(s, nsym(tree));
    if (idx > 0) {
      if (idx != sp) {
        gen_move(s, idx, sp, val);
        if (val && on_eval(s)) genop_0(s, OP_NOP);
      }
      break;
    }
    else {
      int lv = 0;
      codegen_scope *up = s->prev;

      while (up) {
        idx = lv_idx(up, nsym(tree));
        if (idx > 0) {
          genop_3(s, OP_SETUPVAR, sp, idx, lv);
          break;
        }
        lv++;
        up = up->prev;
      }
    }
    break;
  case 132:
    idx = new_sym(s, nsym(tree));
    genop_2(s, OP_SETIV, sp, idx);
    break;
  case 134:
    idx = new_sym(s, nsym(tree));
    genop_2(s, OP_SETCV, sp, idx);
    break;
  case 135:
    idx = new_sym(s, nsym(tree));
    genop_2(s, OP_SETCONST, sp, idx);
    break;
  case 136:
    gen_move(s, cursp(), sp, 0);
    push();
    codegen(s, tree->car, VAL);
    pop_n(2);
    idx = new_sym(s, nsym(tree->cdr));
    genop_2(s, OP_SETMCNST, sp, idx);
    break;

  case 137:
  case 128:
    push();
    gen_call(s, tree, attrsym(s, nsym(tree->cdr->car)), sp, NOVAL,
             type == 128);
    pop();
    if (val) {
      gen_move(s, cursp(), sp, 0);
    }
    break;

  case 130:
    gen_vmassignment(s, tree->car, sp, val);
    break;


  case 129:
    break;

  default:

    fprintf(stderr, "unknown lhs %d\n", type);

    break;
  }
  if (val) push();
}
