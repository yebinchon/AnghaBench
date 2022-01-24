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
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  enum mrb_vtype { ____Placeholder_mrb_vtype } mrb_vtype ;

/* Variables and functions */
 int FUNC0 (struct RClass*) ; 
 int MRB_TT_OBJECT ; 
 struct RClass* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,struct RClass*) ; 
 int /*<<< orphan*/  FUNC4 (struct RObject*) ; 

mrb_value
FUNC5(mrb_state *mrb, mrb_value klass)
{
  struct RClass *c = FUNC1(klass);
  enum mrb_vtype ttype = FUNC0(c);
  mrb_value obj;

  /* copied from mrb_instance_alloc() */
  if (ttype == 0) ttype = MRB_TT_OBJECT;
  obj = FUNC4((struct RObject*)FUNC3(mrb, ttype, c));
  return FUNC2(mrb, obj);
}