#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct REnv {int /*<<< orphan*/ * stack; TYPE_1__* cxt; } ;
struct RBasic {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
struct TYPE_9__ {TYPE_1__* c; } ;
typedef  TYPE_3__ mrb_state ;
struct TYPE_8__ {struct REnv* env; } ;
struct TYPE_7__ {TYPE_2__* cibase; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct REnv*) ; 
 int /*<<< orphan*/  FUNC1 (struct REnv*) ; 
 int /*<<< orphan*/  FUNC2 (struct REnv*) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,struct RBasic*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 

void
FUNC6(mrb_state *mrb, struct REnv *e)
{
  if (e == NULL) return;
  else {
    size_t len = (size_t)FUNC0(e);
    mrb_value *p;

    if (!FUNC1(e)) return;
    if (e->cxt != mrb->c) return;
    if (e == mrb->c->cibase->env) return; /* for mirb */
    p = (mrb_value *)FUNC3(mrb, sizeof(mrb_value)*len);
    if (len > 0) {
      FUNC5(p, e->stack, len);
    }
    e->stack = p;
    FUNC2(e);
    FUNC4(mrb, (struct RBasic *)e);
  }
}