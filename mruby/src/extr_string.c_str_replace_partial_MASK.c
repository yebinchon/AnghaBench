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
struct RString {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  scalar_t__ mrb_int ;

/* Variables and functions */
 int /*<<< orphan*/  E_RUNTIME_ERROR ; 
 scalar_t__ MRB_INT_MAX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct RString*) ; 
 char* FUNC3 (struct RString*) ; 
 int /*<<< orphan*/  FUNC4 (struct RString*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct RString*) ; 
 struct RString* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct RString*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC13(mrb_state *mrb, mrb_value src, mrb_int pos, mrb_int end, mrb_value rep)
{
  const mrb_int shrink_threshold = 256;
  struct RString *str = FUNC10(src);
  mrb_int len = FUNC2(str);
  mrb_int replen, newlen;
  char *strp;

  if (end > len) { end = len; }

  if (pos < 0 || pos > len) {
    FUNC12(mrb, FUNC6(pos));
  }

  replen = (FUNC7(rep) ? 0 : FUNC0(rep));
  newlen = replen + len - (end - pos);

  if (newlen >= MRB_INT_MAX || newlen < replen /* overflowed */) {
    FUNC8(mrb, E_RUNTIME_ERROR, "string size too big");
  }

  FUNC9(mrb, str);

  if (len < newlen) {
    FUNC11(mrb, str, newlen);
  }

  strp = FUNC3(str);

  FUNC5(strp + newlen - (len - end), strp + end, len - end);
  if (!FUNC7(rep)) {
    FUNC5(strp + pos, FUNC1(rep), replen);
  }
  FUNC4(str, newlen);
  strp[newlen] = '\0';

  if (len - newlen >= shrink_threshold) {
    FUNC11(mrb, str, newlen);
  }

  return src;
}