#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
struct loopinfo {int /*<<< orphan*/  pc2; } ;
struct TYPE_27__ {TYPE_2__* cdr; struct TYPE_27__* car; } ;
typedef  TYPE_4__ node ;
struct TYPE_28__ {int /*<<< orphan*/  mrb; TYPE_3__* irep; } ;
typedef  TYPE_5__ codegen_scope ;
struct TYPE_26__ {scalar_t__ rlen; } ;
struct TYPE_25__ {TYPE_1__* cdr; int /*<<< orphan*/  car; } ;
struct TYPE_24__ {int /*<<< orphan*/  car; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOOP_FOR ; 
 int /*<<< orphan*/  NOVAL ; 
 int /*<<< orphan*/  OP_BLOCK ; 
 int /*<<< orphan*/  OP_ENTER ; 
 int /*<<< orphan*/  OP_RETURN ; 
 int /*<<< orphan*/  OP_SENDB ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_5__*,TYPE_4__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 struct loopinfo* FUNC9 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*) ; 
 int FUNC12 (TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*) ; 
 TYPE_5__* FUNC16 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC17(codegen_scope *s, node *tree)
{
  codegen_scope *prev = s;
  int idx;
  struct loopinfo *lp;
  node *n2;

  /* generate receiver */
  FUNC0(s, tree->cdr->car, VAL);
  /* generate loop-block */
  s = FUNC16(s->mrb, s, NULL);

  FUNC14();                       /* push for a block parameter */

  /* generate loop variable */
  n2 = tree->car;
  FUNC7(s, OP_ENTER, 0x40000);
  if (n2->car && !n2->car->cdr && !n2->cdr) {
    FUNC2(s, n2->car->car, 1, NOVAL);
  }
  else {
    FUNC4(s, n2, 1, VAL);
  }
  /* construct loop */
  lp = FUNC9(s, LOOP_FOR);
  lp->pc2 = FUNC11(s);

  /* loop body */
  FUNC0(s, tree->cdr->cdr->car, VAL);
  FUNC13();
  FUNC3(s, OP_RETURN, FUNC1());
  FUNC8(s, NOVAL);
  FUNC15(s);
  s = prev;
  FUNC5(s, OP_BLOCK, FUNC1(), s->irep->rlen-1);
  FUNC14();FUNC13(); /* space for a block */
  FUNC13();
  idx = FUNC12(s, FUNC10(s->mrb, "each"));
  FUNC6(s, OP_SENDB, FUNC1(), idx, 0);
}