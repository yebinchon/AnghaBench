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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  scalar_t__ mrb_sym ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC8(mrb_state *mrb, mrb_value obj, mrb_sym id)
{
  mrb_value members, *ptr;
  const mrb_value *ptr_members;
  mrb_int i, len;

  members = FUNC7(mrb, obj);
  ptr_members = FUNC1(members);
  len = FUNC0(members);
  ptr = FUNC2(obj);
  for (i=0; i<len; i++) {
    mrb_value slot = ptr_members[i];
    if (FUNC6(slot) && FUNC5(slot) == id) {
      return ptr[i];
    }
  }
  FUNC3(mrb, id, "no member '%n' in struct", id);
  return FUNC4();       /* not reached */
}