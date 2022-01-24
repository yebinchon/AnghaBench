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
struct TYPE_2__ {scalar_t__ func; scalar_t__ irep; } ;
struct RProc {TYPE_1__ body; } ;
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (struct RProc*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 struct RProc* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  mrb_value other, receiver, orig_proc, other_proc;
  struct RClass *owner, *klass;
  struct RProc *orig_rproc, *other_rproc;

  FUNC5(mrb, "o", &other);
  if (!FUNC8(mrb, other, FUNC2(mrb, self)))
    return FUNC4();

  if (FUNC2(mrb, self) != FUNC2(mrb, other))
    return FUNC4();

  klass = FUNC3(FUNC0(self, "_klass"));
  if (klass != FUNC3(FUNC0(other, "_klass")))
    return FUNC4();

  owner = FUNC3(FUNC0(self, "_owner"));
  if (owner != FUNC3(FUNC0(other, "_owner")))
    return FUNC4();

  receiver = FUNC0(self, "_recv");
  if (!FUNC7(mrb, receiver, FUNC0(other, "_recv")))
    return FUNC4();

  orig_proc = FUNC0(self, "_proc");
  other_proc = FUNC0(other, "_proc");
  if (FUNC6(orig_proc) && FUNC6(other_proc)) {
    if (FUNC10(FUNC0(self, "_name")) == FUNC10(FUNC0(other, "_name")))
      return FUNC11();
    else
      return FUNC4();
  }

  if (FUNC6(orig_proc))
    return FUNC4();
  if (FUNC6(other_proc))
    return FUNC4();

  orig_rproc = FUNC9(orig_proc);
  other_rproc = FUNC9(other_proc);
  if (FUNC1(orig_rproc)) {
    if (!FUNC1(other_rproc))
      return FUNC4();
    if (orig_rproc->body.func != other_rproc->body.func)
      return FUNC4();
  }
  else {
    if (FUNC1(other_rproc))
      return FUNC4();
    if (orig_rproc->body.irep != other_rproc->body.irep)
      return FUNC4();
  }

  return FUNC11();
}