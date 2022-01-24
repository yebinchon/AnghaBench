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
struct tr_pattern {int dummy; } ;
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  size_t mrb_int ;
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 struct tr_pattern STATIC_TR_PATTERN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 size_t FUNC7 (struct tr_pattern*,char*,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct tr_pattern*) ; 
 size_t FUNC9 (struct tr_pattern*,char*,size_t) ; 
 struct tr_pattern* FUNC10 (int /*<<< orphan*/ *,struct tr_pattern*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static mrb_bool
FUNC11(mrb_state *mrb, mrb_value str, mrb_value p1, mrb_value p2, mrb_bool squeeze)
{
  struct tr_pattern pat = STATIC_TR_PATTERN;
  struct tr_pattern rep_storage = STATIC_TR_PATTERN;
  char *s;
  mrb_int len;
  mrb_int i;
  mrb_int j;
  mrb_bool flag_changed = FALSE;
  mrb_int lastch = -1;
  struct tr_pattern *rep;

  FUNC5(mrb, FUNC6(str));
  FUNC10(mrb, &pat, p1, TRUE);
  rep = FUNC10(mrb, &rep_storage, p2, FALSE);
  s = FUNC2(str);
  len = FUNC1(str);

  for (i=j=0; i<len; i++,j++) {
    mrb_int n = FUNC7(&pat, FUNC2(p1), s[i]);

    if (i>j) s[j] = s[i];
    if (n >= 0) {
      flag_changed = TRUE;
      if (rep == NULL) {
	j--;
      }
      else {
        mrb_int c = FUNC9(rep, FUNC2(p2), n);

        if (c < 0 || (squeeze && c == lastch)) {
          j--;
          continue;
        }
        if (c > 0x80) {
          FUNC4(mrb, E_ARGUMENT_ERROR, "character (%i) out of range", c);
        }
	lastch = c;
	s[i] = (char)c;
      }
    }
  }

  FUNC8(mrb, &pat);
  FUNC8(mrb, rep);

  if (flag_changed) {
    FUNC3(FUNC0(str), j);
    FUNC2(str)[j] = 0;
  }
  return flag_changed;
}