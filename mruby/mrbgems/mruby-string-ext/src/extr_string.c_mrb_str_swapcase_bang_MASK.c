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

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 char FUNC4 (char) ; 
 char FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RString*) ; 
 struct RString* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value str)
{
  char *p, *pend;
  int modify = 0;
  struct RString *s = FUNC8(str);

  FUNC7(mrb, s);
  p = FUNC3(str);
  pend = p + FUNC2(str);
  while (p < pend) {
    if (FUNC1(*p)) {
      *p = FUNC4(*p);
      modify = 1;
    }
    else if (FUNC0(*p)) {
      *p = FUNC5(*p);
      modify = 1;
    }
    p++;
  }

  if (modify) return str;
  return FUNC6();
}