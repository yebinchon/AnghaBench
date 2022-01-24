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
typedef  int mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RString*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 struct RString* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  mrb_value result;
  unsigned char *p, *e, *b, *t;
  const char *prepend;
  struct RString *s = FUNC10(self);
  mrb_int l;

  if (FUNC1(self) == 0)
    return self;

  FUNC7(mrb, s);
  l = FUNC1(self);
  b = p = (unsigned char*) FUNC2(self);
  t = e = p + l;
  *(e--) = 0;

  // find trailing ascii/number
  while (e >= b) {
    if (FUNC0(*e))
      break;
    e--;
  }
  if (e < b) {
    e = p + l - 1;
    result = FUNC9(mrb, "");
  }
  else {
    // find leading letter of the ascii/number
    b = e;
    while (b > p) {
      if (!FUNC0(*b) || (FUNC0(*b) && *b != '9' && *b != 'z' && *b != 'Z'))
        break;
      b--;
    }
    if (!FUNC0(*b))
      b++;
    result = FUNC8(mrb, (char*) p, b - p);
  }

  while (e >= b) {
    if (!FUNC0(*e)) {
      if (*e == 0xff) {
        FUNC6(mrb, result, "\x01");
        (*e) = 0;
      }
      else
        (*e)++;
      break;
    }
    prepend = NULL;
    if (*e == '9') {
      if (e == b) prepend = "1";
      *e = '0';
    }
    else if (*e == 'z') {
      if (e == b) prepend = "a";
      *e = 'a';
    }
    else if (*e == 'Z') {
      if (e == b) prepend = "A";
      *e = 'A';
    }
    else {
      (*e)++;
      break;
    }
    if (prepend) FUNC5(mrb, result, prepend);
    e--;
  }
  result = FUNC4(mrb, result, (char*) b, t - b);
  l = FUNC1(result);
  FUNC11(mrb, self, l);
  FUNC3(FUNC2(self), FUNC2(result), l);
  return self;
}