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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct RClass*) ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value self)
{
  mrb_value owner = FUNC3(mrb, self, FUNC2(mrb, "_owner"));
  mrb_value klass = FUNC3(mrb, self, FUNC2(mrb, "_klass"));
  mrb_value name = FUNC3(mrb, self, FUNC2(mrb, "_name"));
  mrb_value str = FUNC8(mrb, "#<");
  struct RClass *rklass;

  FUNC5(mrb, str, FUNC4(mrb, self));
  FUNC6(mrb, str, ": ");
  rklass = FUNC1(klass);
  if (FUNC1(owner) == rklass) {
    FUNC7(mrb, str, owner);
    FUNC6(mrb, str, "#");
    FUNC7(mrb, str, name);
  }
  else {
    FUNC5(mrb, str, FUNC0(mrb, rklass));
    FUNC6(mrb, str, "(");
    FUNC7(mrb, str, owner);
    FUNC6(mrb, str, ")#");
    FUNC7(mrb, str, name);
  }
  FUNC6(mrb, str, ">");
  return str;
}