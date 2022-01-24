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
struct RObject {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RObject* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct RObject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct RObject*) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value self)
{
  struct RObject *me;
  mrb_value owner = FUNC5(mrb, self, FUNC4(mrb, "_owner"));
  mrb_value name = FUNC5(mrb, self, FUNC4(mrb, "_name"));
  mrb_value proc = FUNC5(mrb, self, FUNC4(mrb, "_proc"));
  mrb_value klass = FUNC5(mrb, self, FUNC4(mrb, "_klass"));
  mrb_value recv;

  FUNC3(mrb, "o", &recv);
  FUNC0(mrb, recv, owner);
  me = FUNC1(mrb, FUNC2(mrb, "Method"));
  FUNC6(mrb, me, FUNC4(mrb, "_owner"), owner);
  FUNC6(mrb, me, FUNC4(mrb, "_recv"), recv);
  FUNC6(mrb, me, FUNC4(mrb, "_name"), name);
  FUNC6(mrb, me, FUNC4(mrb, "_proc"), proc);
  FUNC6(mrb, me, FUNC4(mrb, "_klass"), klass);

  return FUNC7(me);
}