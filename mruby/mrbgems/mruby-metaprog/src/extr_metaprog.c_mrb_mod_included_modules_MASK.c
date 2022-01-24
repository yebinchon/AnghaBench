#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct RClass {scalar_t__ tt; struct RClass* super; TYPE_1__* c; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
struct TYPE_2__ {scalar_t__ tt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct RClass*) ; 
 scalar_t__ MRB_TT_ICLASS ; 
 scalar_t__ MRB_TT_MODULE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static mrb_value
FUNC5(mrb_state *mrb, mrb_value self)
{
  mrb_value result;
  struct RClass *c = FUNC3(self);
  struct RClass *origin = c;

  FUNC0(origin);
  result = FUNC1(mrb);
  while (c) {
    if (c != origin && c->tt == MRB_TT_ICLASS) {
      if (c->c->tt == MRB_TT_MODULE) {
        FUNC2(mrb, result, FUNC4(c->c));
      }
    }
    c = c->super;
  }

  return result;
}