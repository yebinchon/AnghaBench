#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  ptr; } ;
struct TYPE_4__ {TYPE_1__ heap; } ;
struct RString {TYPE_2__ as; } ;
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
 int /*<<< orphan*/  FUNC7 (char*,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct RString*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct RString*) ; 

__attribute__((used)) static mrb_value
FUNC12(mrb_state *mrb, mrb_value self)
{
  mrb_int plen, slen;
  char *ptr, *s;
  struct RString *str = FUNC0(self);

  FUNC9(mrb, "s", &ptr, &plen);
  slen = FUNC2(str);
  if (plen > slen) return FUNC10();
  s = FUNC3(str);
  if (FUNC6(s, ptr, plen) != 0) return FUNC10();
  if (!FUNC8(str) && (FUNC5(str) || FUNC1(str))) {
    str->as.heap.ptr += plen;
  }
  else {
    FUNC11(mrb, str);
    s = FUNC3(str);
    FUNC7(s, s+plen, slen-plen);
  }
  FUNC4(str, slen-plen);
  return self;
}