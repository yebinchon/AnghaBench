#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  object_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_ISTRUCT ; 
 int /*<<< orphan*/  istruct_test_initialize ; 
 int /*<<< orphan*/  istruct_test_length ; 
 int /*<<< orphan*/  istruct_test_mutate ; 
 int /*<<< orphan*/  istruct_test_test_receive ; 
 int /*<<< orphan*/  istruct_test_test_receive_direct ; 
 int /*<<< orphan*/  istruct_test_to_s ; 
 struct RClass* FUNC3 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC6(mrb_state *mrb)
{
  struct RClass *cls;

  cls = FUNC3(mrb, "InlineStructTest", mrb->object_class);
  FUNC2(cls, MRB_TT_ISTRUCT);
  FUNC5(mrb, cls, "initialize", istruct_test_initialize, FUNC1(1));
  FUNC5(mrb, cls, "to_s", istruct_test_to_s, FUNC0());
  FUNC5(mrb, cls, "mutate", istruct_test_mutate, FUNC0());
  FUNC4(mrb, cls, "length", istruct_test_length, FUNC0());
  FUNC4(mrb, cls, "test_receive", istruct_test_test_receive, FUNC1(1));
  FUNC4(mrb, cls, "test_receive_direct", istruct_test_test_receive_direct, FUNC1(1));
}