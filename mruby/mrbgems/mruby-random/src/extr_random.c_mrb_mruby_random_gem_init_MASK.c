#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct RClass {int dummy; } ;
typedef  int /*<<< orphan*/  rand_state ;
struct TYPE_9__ {int /*<<< orphan*/  object_class; struct RClass* kernel_module; struct RClass* array_class; } ;
typedef  TYPE_1__ mrb_state ;

/* Variables and functions */
 int ISTRUCT_DATA_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct RClass*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MRB_TT_ISTRUCT ; 
 int /*<<< orphan*/  mrb_ary_sample ; 
 int /*<<< orphan*/  mrb_ary_shuffle ; 
 int /*<<< orphan*/  mrb_ary_shuffle_bang ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct RClass* FUNC4 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,struct RClass*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,struct RClass*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct RClass*) ; 
 int /*<<< orphan*/  random_f_rand ; 
 int /*<<< orphan*/  random_f_srand ; 
 int /*<<< orphan*/  random_m_init ; 
 int /*<<< orphan*/  random_m_rand ; 
 int /*<<< orphan*/  random_m_srand ; 

void FUNC10(mrb_state *mrb)
{
  struct RClass *random;
  struct RClass *array = mrb->array_class;

  FUNC2(sizeof(rand_state) <= ISTRUCT_DATA_SIZE);

  FUNC6(mrb, mrb->kernel_module, "rand", random_f_rand, FUNC0(1));
  FUNC6(mrb, mrb->kernel_module, "srand", random_f_srand, FUNC0(1));

  random = FUNC4(mrb, "Random", mrb->object_class);
  FUNC1(random, MRB_TT_ISTRUCT);
  FUNC5(mrb, random, "rand", random_f_rand, FUNC0(1));
  FUNC5(mrb, random, "srand", random_f_srand, FUNC0(1));

  FUNC6(mrb, random, "initialize", random_m_init, FUNC0(1));
  FUNC6(mrb, random, "rand", random_m_rand, FUNC0(1));
  FUNC6(mrb, random, "srand", random_m_srand, FUNC0(1));

  FUNC6(mrb, array, "shuffle", mrb_ary_shuffle, FUNC0(1));
  FUNC6(mrb, array, "shuffle!", mrb_ary_shuffle_bang, FUNC0(1));
  FUNC6(mrb, array, "sample", mrb_ary_sample, FUNC0(2));

  FUNC3(mrb, FUNC9(random), FUNC7(mrb, "DEFAULT"),
          FUNC8(mrb, random, 0, NULL));
}