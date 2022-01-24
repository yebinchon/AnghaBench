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
 int /*<<< orphan*/  E_TYPE_ERROR ; 
 struct RClass* FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct RClass*) ; 
 int /*<<< orphan*/  FUNC4 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static mrb_value
FUNC6(mrb_state *mrb) {
  struct RClass *c = FUNC0(mrb, "Random");
  mrb_value d = FUNC1(mrb, FUNC4(c), FUNC2(mrb, "DEFAULT"));
  if (!FUNC3(mrb, d, c)) {
    FUNC5(mrb, E_TYPE_ERROR, "Random::DEFAULT replaced");
  }
  return d;
}