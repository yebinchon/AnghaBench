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
typedef  int /*<<< orphan*/  uint8_t ;
struct tr_pattern {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct tr_pattern STATIC_TR_PATTERN ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC6 (struct tr_pattern*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct tr_pattern*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct tr_pattern*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value str)
{
  mrb_value v_pat = FUNC4();
  mrb_int i;
  char *s;
  mrb_int len;
  mrb_int count = 0;
  struct tr_pattern pat = STATIC_TR_PATTERN;
  uint8_t bitmap[32];

  FUNC3(mrb, "S", &v_pat);
  FUNC8(mrb, &pat, v_pat, TRUE);
  FUNC6(&pat, v_pat, bitmap);
  FUNC7(mrb, &pat);

  s = FUNC1(str);
  len = FUNC0(str);
  for (i = 0; i < len; i++) {
    if (FUNC5(bitmap, s[i])) count++;
  }
  return FUNC2(count);
}