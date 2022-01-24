#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;
typedef  struct TYPE_18__   TYPE_10__ ;

/* Type definitions */
struct TYPE_20__ {TYPE_10__* cdr; TYPE_10__* car; } ;
typedef  TYPE_2__ node ;
typedef  scalar_t__ mrb_sym ;
typedef  int mrb_int ;
struct TYPE_21__ {int /*<<< orphan*/  mrb; } ;
typedef  TYPE_3__ codegen_scope ;
struct TYPE_19__ {TYPE_2__* car; } ;
struct TYPE_18__ {TYPE_1__* cdr; int /*<<< orphan*/  car; } ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_ARYPUSH ; 
 int /*<<< orphan*/  OP_DIV ; 
 int /*<<< orphan*/  OP_EQ ; 
 int /*<<< orphan*/  OP_GE ; 
 int /*<<< orphan*/  OP_GT ; 
 int /*<<< orphan*/  OP_JMPNIL ; 
 int /*<<< orphan*/  OP_LE ; 
 int /*<<< orphan*/  OP_LT ; 
 int /*<<< orphan*/  OP_MUL ; 
 int /*<<< orphan*/  OP_SEND ; 
 int /*<<< orphan*/  OP_SENDB ; 
 int /*<<< orphan*/  OP_SENDV ; 
 int /*<<< orphan*/  OP_SENDVB ; 
 int /*<<< orphan*/  OP_SUB ; 
 int /*<<< orphan*/  VAL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_10__*,int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int,int,int) ; 
 int FUNC5 (TYPE_3__*,TYPE_10__*,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int,int,int) ; 
 char* FUNC10 (int /*<<< orphan*/ ,scalar_t__,int*) ; 
 int FUNC11 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 () ; 

__attribute__((used)) static void
FUNC16(codegen_scope *s, node *tree, mrb_sym name, int sp, int val, int safe)
{
  mrb_sym sym = name ? name : FUNC12(tree->cdr->car);
  int skip = 0;
  int n = 0, noop = 0, sendv = 0, blk = 0;

  FUNC0(s, tree->car, VAL); /* receiver */
  if (safe) {
    int recv = FUNC1()-1;
    FUNC4(s, FUNC1(), recv, 1);
    skip = FUNC6(s, OP_JMPNIL, FUNC1(), 0, val);
  }
  tree = tree->cdr->cdr->car;
  if (tree) {
    n = FUNC5(s, tree->car, VAL, sp?1:0);
    if (n < 0) {
      n = noop = sendv = 1;
      FUNC15();
    }
  }
  if (sp) {                     /* last argument pushed (attr=) */
    if (sendv) {
      FUNC4(s, FUNC1(), sp, 0);
      FUNC13();
      FUNC7(s, OP_ARYPUSH, FUNC1());
      FUNC15();
    }
    else {
      FUNC4(s, FUNC1(), sp, 0);
      FUNC15();
      n++;
    }
  }
  if (tree && tree->cdr) {
    noop = 1;
    FUNC0(s, tree->cdr, VAL);
    FUNC13();
    blk = 1;
  }
  FUNC15();FUNC13();
  FUNC14(n+1);
  {
    mrb_int symlen;
    const char *symname = FUNC10(s->mrb, sym, &symlen);

    if (!noop && symlen == 1 && symname[0] == '+' && n == 1)  {
      FUNC3(s, OP_ADD, FUNC1());
    }
    else if (!noop && symlen == 1 && symname[0] == '-' && n == 1)  {
      FUNC3(s, OP_SUB, FUNC1());
    }
    else if (!noop && symlen == 1 && symname[0] == '*' && n == 1)  {
      FUNC7(s, OP_MUL, FUNC1());
    }
    else if (!noop && symlen == 1 && symname[0] == '/' && n == 1)  {
      FUNC7(s, OP_DIV, FUNC1());
    }
    else if (!noop && symlen == 1 && symname[0] == '<' && n == 1)  {
      FUNC7(s, OP_LT, FUNC1());
    }
    else if (!noop && symlen == 2 && symname[0] == '<' && symname[1] == '=' && n == 1)  {
      FUNC7(s, OP_LE, FUNC1());
    }
    else if (!noop && symlen == 1 && symname[0] == '>' && n == 1)  {
      FUNC7(s, OP_GT, FUNC1());
    }
    else if (!noop && symlen == 2 && symname[0] == '>' && symname[1] == '=' && n == 1)  {
      FUNC7(s, OP_GE, FUNC1());
    }
    else if (!noop && symlen == 2 && symname[0] == '=' && symname[1] == '=' && n == 1)  {
      FUNC7(s, OP_EQ, FUNC1());
    }
    else {
      int idx = FUNC11(s, sym);

      if (sendv) {
        FUNC8(s, blk ? OP_SENDVB : OP_SENDV, FUNC1(), idx);
      }
      else {
        FUNC9(s, blk ? OP_SENDB : OP_SEND, FUNC1(), idx, n);
      }
    }
  }
  if (safe) {
    FUNC2(s, skip);
  }
  if (val) {
    FUNC15();
  }
}