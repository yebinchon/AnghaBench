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
typedef  int /*<<< orphan*/  rand_state ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;
typedef  int /*<<< orphan*/  mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC15(mrb_state *mrb, mrb_value ary)
{
  mrb_int n = 0;
  mrb_bool given;
  mrb_value r = FUNC9();
  rand_state *random;
  mrb_int len;

  FUNC7(mrb, "|i?o", &n, &given, &r);
  if (FUNC8(r)) {
    random = FUNC13(mrb);
  }
  else {
    FUNC12(mrb, r);
    random = FUNC14(r);
  }
  len = FUNC0(ary);
  if (!given) {                 /* pick one element */
    switch (len) {
    case 0:
      return FUNC9();
    case 1:
      return FUNC1(ary)[0];
    default:
      return FUNC1(ary)[FUNC11(random) % len];
    }
  }
  else {
    mrb_value result;
    mrb_int i, j;

    if (n < 0) FUNC10(mrb, E_ARGUMENT_ERROR, "negative sample number");
    if (n > len) n = len;
    result = FUNC2(mrb, n);
    for (i=0; i<n; i++) {
      mrb_int r;

      for (;;) {
      retry:
        r = (mrb_int)(FUNC11(random) % len);

        for (j=0; j<i; j++) {
          if (FUNC5(FUNC1(result)[j]) == r) {
            goto retry;         /* retry if duplicate */
          }
        }
        break;
      }
      FUNC3(mrb, result, FUNC6(r));
    }
    for (i=0; i<n; i++) {
      FUNC4(mrb, result, i, FUNC1(ary)[FUNC5(FUNC1(result)[i])]);
    }
    return result;
  }
}