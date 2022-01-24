#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* cdr; struct TYPE_4__* car; } ;
typedef  TYPE_1__ node ;
typedef  int /*<<< orphan*/  codegen_scope ;

/* Variables and functions */
 int /*<<< orphan*/  NOVAL ; 
 int /*<<< orphan*/  OP_APOST ; 
 int /*<<< orphan*/  OP_AREF ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void
FUNC8(codegen_scope *s, node *tree, int rhs, int val)
{
  int n = 0, post = 0;
  node *t, *p;

  if (tree->car) {              /* pre */
    t = tree->car;
    n = 0;
    while (t) {
      int sp = FUNC0();

      FUNC3(s, OP_AREF, sp, rhs, n);
      FUNC6();
      FUNC1(s, t->car, sp, NOVAL);
      FUNC4();
      n++;
      t = t->cdr;
    }
  }
  t = tree->cdr;
  if (t) {
    if (t->cdr) {               /* post count */
      p = t->cdr->car;
      while (p) {
        post++;
        p = p->cdr;
      }
    }
    FUNC2(s, FUNC0(), rhs, val);
    FUNC7(post+1);
    FUNC5(post+1);
    FUNC3(s, OP_APOST, FUNC0(), n, post);
    n = 1;
    if (t->car && t->car != (node*)-1) { /* rest */
      FUNC1(s, t->car, FUNC0(), NOVAL);
    }
    if (t->cdr && t->cdr->car) {
      t = t->cdr->car;
      while (t) {
        FUNC1(s, t->car, FUNC0()+n, NOVAL);
        t = t->cdr;
        n++;
      }
    }
    if (val) {
      FUNC2(s, FUNC0(), rhs, 0);
    }
  }
}