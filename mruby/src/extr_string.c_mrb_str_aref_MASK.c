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
typedef  int /*<<< orphan*/  mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
#define  STR_BYTE_RANGE_CORRECTED 131 
#define  STR_CHAR_RANGE 130 
#define  STR_CHAR_RANGE_CORRECTED 129 
#define  STR_OUT_OF_RANGE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC10(mrb_state *mrb, mrb_value str, mrb_value indx, mrb_value alen)
{
  mrb_int beg, len;

  switch (FUNC7(mrb, str, indx, alen, &beg, &len)) {
    case STR_CHAR_RANGE_CORRECTED:
      return FUNC8(mrb, str, beg, len);
    case STR_CHAR_RANGE:
      str = FUNC9(mrb, str, beg, len);
      if (FUNC6(alen) && !FUNC1(str) && FUNC0(str) == 0) return FUNC2();
      return str;
    case STR_BYTE_RANGE_CORRECTED:
      if (FUNC5(indx)) {
        return FUNC4(mrb, indx);
      }
      else {
        return FUNC3(mrb, str, beg, len);
      }
    case STR_OUT_OF_RANGE:
    default:
      return FUNC2();
  }
}