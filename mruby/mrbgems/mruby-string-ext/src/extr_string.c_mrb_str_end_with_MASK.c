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
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t,size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ **,size_t*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value self)
{
  mrb_value *argv, sub;
  mrb_int argc, i;
  FUNC7(mrb, "*", &argv, &argc);

  for (i = 0; i < argc; i++) {
    size_t len_l, len_r;
    int ai = FUNC6(mrb);
    sub = FUNC3(mrb, argv[i]);
    FUNC5(mrb, ai);
    len_l = FUNC0(self);
    len_r = FUNC0(sub);
    if (len_l >= len_r) {
      if (FUNC2(FUNC1(self) + (len_l - len_r),
                 FUNC1(sub),
                 len_r) == 0) {
        return FUNC8();
      }
    }
  }
  return FUNC4();
}