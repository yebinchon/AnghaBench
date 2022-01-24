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
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_ARRAY ; 
 struct RClass* FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mrb_struct_aref ; 
 int /*<<< orphan*/  mrb_struct_aset ; 
 int /*<<< orphan*/  mrb_struct_eql ; 
 int /*<<< orphan*/  mrb_struct_equal ; 
 int /*<<< orphan*/  mrb_struct_init_copy ; 
 int /*<<< orphan*/  mrb_struct_initialize ; 
 int /*<<< orphan*/  mrb_struct_len ; 
 int /*<<< orphan*/  mrb_struct_members ; 
 int /*<<< orphan*/  mrb_struct_s_def ; 
 int /*<<< orphan*/  mrb_struct_to_a ; 
 int /*<<< orphan*/  mrb_struct_to_h ; 
 int /*<<< orphan*/  mrb_struct_values_at ; 

void
FUNC7(mrb_state* mrb)
{
  struct RClass *st;
  st = FUNC4(mrb, "Struct",  mrb->object_class);
  FUNC3(st, MRB_TT_ARRAY);

  FUNC5(mrb, st, "new",             mrb_struct_s_def,       FUNC0());  /* 15.2.18.3.1  */

  FUNC6(mrb, st,       "==",              mrb_struct_equal,       FUNC2(1)); /* 15.2.18.4.1  */
  FUNC6(mrb, st,       "[]",              mrb_struct_aref,        FUNC2(1)); /* 15.2.18.4.2  */
  FUNC6(mrb, st,       "[]=",             mrb_struct_aset,        FUNC2(2)); /* 15.2.18.4.3  */
  FUNC6(mrb, st,       "members",         mrb_struct_members,     FUNC1()); /* 15.2.18.4.6  */
  FUNC6(mrb, st,       "initialize",      mrb_struct_initialize,  FUNC0());  /* 15.2.18.4.8  */
  FUNC6(mrb, st,       "initialize_copy", mrb_struct_init_copy,   FUNC2(1)); /* 15.2.18.4.9  */
  FUNC6(mrb, st,       "eql?",            mrb_struct_eql,         FUNC2(1)); /* 15.2.18.4.12(x)  */

  FUNC6(mrb, st,        "size",           mrb_struct_len,         FUNC1());
  FUNC6(mrb, st,        "length",         mrb_struct_len,         FUNC1());
  FUNC6(mrb, st,        "to_a",           mrb_struct_to_a,        FUNC1());
  FUNC6(mrb, st,        "values",         mrb_struct_to_a,        FUNC1());
  FUNC6(mrb, st,        "to_h",           mrb_struct_to_h,        FUNC1());
  FUNC6(mrb, st,        "values_at",      mrb_struct_values_at,   FUNC0());
}