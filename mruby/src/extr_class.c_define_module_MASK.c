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
typedef  int /*<<< orphan*/  mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 struct RClass* FUNC0 (int /*<<< orphan*/ *,struct RClass*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct RClass*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct RClass*,struct RClass*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct RClass*
FUNC5(mrb_state *mrb, mrb_sym name, struct RClass *outer)
{
  struct RClass *m;

  if (FUNC1(mrb, FUNC3(outer), name)) {
    return FUNC0(mrb, outer, name);
  }
  m = FUNC2(mrb);
  FUNC4(mrb, outer, m, name);

  return m;
}