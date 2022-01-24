#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct RProc {int dummy; } ;
struct RClass {scalar_t__ tt; struct RClass* c; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  E_NAME_ERROR ; 
 scalar_t__ MRB_TT_ICLASS ; 
 struct RProc* FUNC0 (int /*<<< orphan*/ *,struct RClass**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void
FUNC8(mrb_state *mrb, struct RClass *c, mrb_value obj, mrb_sym name, struct RClass **owner, struct RProc **proc, mrb_bool unbound)
{
  mrb_value ret;

  *owner = c;
  *proc = FUNC0(mrb, owner, name);
  if (!*proc) {
    if (unbound) {
      goto name_error;
    }
    if (!FUNC4(mrb, obj, FUNC2(mrb, "respond_to_missing?"))) {
      goto name_error;
    }
    ret = FUNC1(mrb, obj, "respond_to_missing?", 2, FUNC5(name), FUNC7());
    if (!FUNC6(ret)) {
      goto name_error;
    }
    *owner = c;
  }

  while ((*owner)->tt == MRB_TT_ICLASS)
    *owner = (*owner)->c;

  return;

name_error:
  FUNC3(mrb, E_NAME_ERROR, "undefined method '%n' for class '%C'", name, c);
}