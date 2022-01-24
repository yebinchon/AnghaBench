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
typedef  scalar_t__ mrb_bool ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int FUNC2 (struct RString*) ; 
 char* FUNC3 (struct RString*) ; 
 char FUNC4 (char) ; 
 char FUNC5 (char) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct RString*) ; 
 struct RString* FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC9(mrb_state *mrb, mrb_value str)
{
  char *p, *pend;
  mrb_bool modify = FALSE;
  struct RString *s = FUNC8(str);

  FUNC7(mrb, s);
  if (FUNC2(s) == 0 || !FUNC3(s)) return FUNC6();
  p = FUNC3(s); pend = FUNC3(s) + FUNC2(s);
  if (FUNC0(*p)) {
    *p = FUNC5(*p);
    modify = TRUE;
  }
  while (++p < pend) {
    if (FUNC1(*p)) {
      *p = FUNC4(*p);
      modify = TRUE;
    }
  }
  if (modify) return str;
  return FUNC6();
}