#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
struct TYPE_7__ {int /*<<< orphan*/  object_class; struct RClass* array_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_ARRAY ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*) ; 
 int /*<<< orphan*/  mrb_ary_aget ; 
 int /*<<< orphan*/  mrb_ary_aset ; 
 int /*<<< orphan*/  mrb_ary_clear_m ; 
 int /*<<< orphan*/  mrb_ary_cmp ; 
 int /*<<< orphan*/  mrb_ary_concat_m ; 
 int /*<<< orphan*/  mrb_ary_delete_at ; 
 int /*<<< orphan*/  mrb_ary_empty_p ; 
 int /*<<< orphan*/  mrb_ary_eq ; 
 int /*<<< orphan*/  mrb_ary_first ; 
 int /*<<< orphan*/  mrb_ary_index_m ; 
 int /*<<< orphan*/  mrb_ary_join_m ; 
 int /*<<< orphan*/  mrb_ary_last ; 
 int /*<<< orphan*/  mrb_ary_plus ; 
 int /*<<< orphan*/  mrb_ary_pop ; 
 int /*<<< orphan*/  mrb_ary_push_m ; 
 int /*<<< orphan*/  mrb_ary_replace_m ; 
 int /*<<< orphan*/  mrb_ary_reverse ; 
 int /*<<< orphan*/  mrb_ary_reverse_bang ; 
 int /*<<< orphan*/  mrb_ary_rindex_m ; 
 int /*<<< orphan*/  mrb_ary_s_create ; 
 int /*<<< orphan*/  mrb_ary_shift ; 
 int /*<<< orphan*/  mrb_ary_size ; 
 int /*<<< orphan*/  mrb_ary_svalue ; 
 int /*<<< orphan*/  mrb_ary_times ; 
 int /*<<< orphan*/  mrb_ary_unshift_m ; 
 struct RClass* FUNC7 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC10(mrb_state *mrb)
{
  struct RClass *a;

  mrb->array_class = a = FUNC7(mrb, "Array", mrb->object_class);              /* 15.2.12 */
  FUNC5(a, MRB_TT_ARRAY);

  FUNC8(mrb, a, "[]",        mrb_ary_s_create,     FUNC0());    /* 15.2.12.4.1 */

  FUNC9(mrb, a, "+",               mrb_ary_plus,         FUNC4(1));   /* 15.2.12.5.1  */
  FUNC9(mrb, a, "*",               mrb_ary_times,        FUNC4(1));   /* 15.2.12.5.2  */
  FUNC9(mrb, a, "<<",              mrb_ary_push_m,       FUNC4(1));   /* 15.2.12.5.3  */
  FUNC9(mrb, a, "[]",              mrb_ary_aget,         FUNC1(1,1)); /* 15.2.12.5.4  */
  FUNC9(mrb, a, "[]=",             mrb_ary_aset,         FUNC1(2,1)); /* 15.2.12.5.5  */
  FUNC9(mrb, a, "clear",           mrb_ary_clear_m,      FUNC2());   /* 15.2.12.5.6  */
  FUNC9(mrb, a, "concat",          mrb_ary_concat_m,     FUNC4(1));   /* 15.2.12.5.8  */
  FUNC9(mrb, a, "delete_at",       mrb_ary_delete_at,    FUNC4(1));   /* 15.2.12.5.9  */
  FUNC9(mrb, a, "empty?",          mrb_ary_empty_p,      FUNC2());   /* 15.2.12.5.12 */
  FUNC9(mrb, a, "first",           mrb_ary_first,        FUNC3(1));   /* 15.2.12.5.13 */
  FUNC9(mrb, a, "index",           mrb_ary_index_m,      FUNC4(1));   /* 15.2.12.5.14 */
  FUNC9(mrb, a, "initialize_copy", mrb_ary_replace_m,    FUNC4(1));   /* 15.2.12.5.16 */
  FUNC9(mrb, a, "join",            mrb_ary_join_m,       FUNC3(1));   /* 15.2.12.5.17 */
  FUNC9(mrb, a, "last",            mrb_ary_last,         FUNC3(1));   /* 15.2.12.5.18 */
  FUNC9(mrb, a, "length",          mrb_ary_size,         FUNC2());   /* 15.2.12.5.19 */
  FUNC9(mrb, a, "pop",             mrb_ary_pop,          FUNC2());   /* 15.2.12.5.21 */
  FUNC9(mrb, a, "push",            mrb_ary_push_m,       FUNC0());    /* 15.2.12.5.22 */
  FUNC9(mrb, a, "replace",         mrb_ary_replace_m,    FUNC4(1));   /* 15.2.12.5.23 */
  FUNC9(mrb, a, "reverse",         mrb_ary_reverse,      FUNC2());   /* 15.2.12.5.24 */
  FUNC9(mrb, a, "reverse!",        mrb_ary_reverse_bang, FUNC2());   /* 15.2.12.5.25 */
  FUNC9(mrb, a, "rindex",          mrb_ary_rindex_m,     FUNC4(1));   /* 15.2.12.5.26 */
  FUNC9(mrb, a, "shift",           mrb_ary_shift,        FUNC2());   /* 15.2.12.5.27 */
  FUNC9(mrb, a, "size",            mrb_ary_size,         FUNC2());   /* 15.2.12.5.28 */
  FUNC9(mrb, a, "slice",           mrb_ary_aget,         FUNC1(1,1)); /* 15.2.12.5.29 */
  FUNC9(mrb, a, "unshift",         mrb_ary_unshift_m,    FUNC0());    /* 15.2.12.5.30 */

  FUNC9(mrb, a, "__ary_eq",        mrb_ary_eq,           FUNC4(1));
  FUNC9(mrb, a, "__ary_cmp",       mrb_ary_cmp,          FUNC4(1));
  FUNC9(mrb, a, "__ary_index",     mrb_ary_index_m,      FUNC4(1));   /* kept for mruby-array-ext */
  FUNC9(mrb, a, "__svalue",        mrb_ary_svalue,       FUNC2());

  FUNC6(mrb, a);
}