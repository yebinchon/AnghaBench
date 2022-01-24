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
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_INDEX_ERROR ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
#define  STR_BYTE_RANGE_CORRECTED 131 
#define  STR_CHAR_RANGE 130 
#define  STR_CHAR_RANGE_CORRECTED 129 
#define  STR_OUT_OF_RANGE 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(mrb_state *mrb, mrb_value str, mrb_value indx, mrb_value alen, mrb_value replace)
{
  mrb_int beg, len, charlen;

  FUNC3(mrb, replace);

  switch (FUNC4(mrb, str, indx, alen, &beg, &len)) {
    case STR_OUT_OF_RANGE:
    default:
      FUNC1(mrb, E_INDEX_ERROR, "string not matched");
    case STR_CHAR_RANGE:
      if (len < 0) {
        FUNC2(mrb, E_INDEX_ERROR, "negative length %v", alen);
      }
      charlen = FUNC0(str);
      if (beg < 0) { beg += charlen; }
      if (beg < 0 || beg > charlen) { FUNC5(mrb, indx); }
      /* fall through */
    case STR_CHAR_RANGE_CORRECTED:
      FUNC6(str, &beg, &len);
      /* fall through */
    case STR_BYTE_RANGE_CORRECTED:
      FUNC7(mrb, str, beg, beg + len, replace);
  }
}