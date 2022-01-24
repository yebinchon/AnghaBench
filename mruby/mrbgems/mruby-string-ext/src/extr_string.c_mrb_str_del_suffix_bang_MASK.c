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
 struct RString* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct RString*) ; 
 scalar_t__ FUNC2 (struct RString*) ; 
 char* FUNC3 (struct RString*) ; 
 int /*<<< orphan*/  FUNC4 (struct RString*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct RString*) ; 
 scalar_t__ FUNC6 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (struct RString*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct RString*) ; 

__attribute__((used)) static mrb_value
FUNC11(mrb_state *mrb, mrb_value self)
{
  mrb_int plen, slen;
  char *ptr, *s;
  struct RString *str = FUNC0(self);

  FUNC8(mrb, "s", &ptr, &plen);
  slen = FUNC2(str);
  if (plen > slen) return FUNC9();
  s = FUNC3(str);
  if (FUNC6(s+slen-plen, ptr, plen) != 0) return FUNC9();
  if (!FUNC7(str) && (FUNC5(str) || FUNC1(str))) {
    /* no need to modify string */
  }
  else {
    FUNC10(mrb, str);
  }
  FUNC4(str, slen-plen);
  return self;
}