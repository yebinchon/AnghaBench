
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


struct loopinfo {int pc2; } ;
struct TYPE_27__ {TYPE_2__* cdr; struct TYPE_27__* car; } ;
typedef TYPE_4__ node ;
struct TYPE_28__ {int mrb; TYPE_3__* irep; } ;
typedef TYPE_5__ codegen_scope ;
struct TYPE_26__ {scalar_t__ rlen; } ;
struct TYPE_25__ {TYPE_1__* cdr; int car; } ;
struct TYPE_24__ {int car; } ;


 int LOOP_FOR ;
 int NOVAL ;
 int OP_BLOCK ;
 int OP_ENTER ;
 int OP_RETURN ;
 int OP_SENDB ;
 int VAL ;
 int codegen (TYPE_5__*,int ,int ) ;
 int cursp () ;
 int gen_assignment (TYPE_5__*,TYPE_4__*,int,int ) ;
 int gen_return (TYPE_5__*,int ,int ) ;
 int gen_vmassignment (TYPE_5__*,TYPE_4__*,int,int ) ;
 int genop_2 (TYPE_5__*,int ,int ,scalar_t__) ;
 int genop_3 (TYPE_5__*,int ,int ,int,int ) ;
 int genop_W (TYPE_5__*,int ,int) ;
 int loop_pop (TYPE_5__*,int ) ;
 struct loopinfo* loop_push (TYPE_5__*,int ) ;
 int mrb_intern_lit (int ,char*) ;
 int new_label (TYPE_5__*) ;
 int new_sym (TYPE_5__*,int ) ;
 int pop () ;
 int push () ;
 int scope_finish (TYPE_5__*) ;
 TYPE_5__* scope_new (int ,TYPE_5__*,int *) ;

__attribute__((used)) static void
for_body(codegen_scope *s, node *tree)
{
  codegen_scope *prev = s;
  int idx;
  struct loopinfo *lp;
  node *n2;


  codegen(s, tree->cdr->car, VAL);

  s = scope_new(s->mrb, s, ((void*)0));

  push();


  n2 = tree->car;
  genop_W(s, OP_ENTER, 0x40000);
  if (n2->car && !n2->car->cdr && !n2->cdr) {
    gen_assignment(s, n2->car->car, 1, NOVAL);
  }
  else {
    gen_vmassignment(s, n2, 1, VAL);
  }

  lp = loop_push(s, LOOP_FOR);
  lp->pc2 = new_label(s);


  codegen(s, tree->cdr->cdr->car, VAL);
  pop();
  gen_return(s, OP_RETURN, cursp());
  loop_pop(s, NOVAL);
  scope_finish(s);
  s = prev;
  genop_2(s, OP_BLOCK, cursp(), s->irep->rlen-1);
  push();pop();
  pop();
  idx = new_sym(s, mrb_intern_lit(s->mrb, "each"));
  genop_3(s, OP_SENDB, cursp(), idx, 0);
}
