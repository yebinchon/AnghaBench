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
 struct RObject* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct RObject*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct RObject*) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value self)
{
  struct RObject *ume;
  mrb_value owner = FUNC3(mrb, self, FUNC2(mrb, "_owner"));
  mrb_value name = FUNC3(mrb, self, FUNC2(mrb, "_name"));
  mrb_value proc = FUNC3(mrb, self, FUNC2(mrb, "_proc"));
  mrb_value klass = FUNC3(mrb, self, FUNC2(mrb, "_klass"));

  ume = FUNC0(mrb, FUNC1(mrb, "UnboundMethod"));
  FUNC5(mrb, ume, FUNC2(mrb, "_owner"), owner);
  FUNC5(mrb, ume, FUNC2(mrb, "_recv"), FUNC4());
  FUNC5(mrb, ume, FUNC2(mrb, "_name"), name);
  FUNC5(mrb, ume, FUNC2(mrb, "_proc"), proc);
  FUNC5(mrb, ume, FUNC2(mrb, "_klass"), klass);

  return FUNC6(ume);
}