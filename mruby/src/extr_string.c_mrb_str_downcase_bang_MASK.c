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
 int FUNC1 (struct RString*) ; 
 char* FUNC2 (struct RString*) ; 
 char FUNC3 (char) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct RString*) ; 
 struct RString* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value str)
{
  char *p, *pend;
  mrb_bool modify = FALSE;
  struct RString *s = FUNC6(str);

  FUNC5(mrb, s);
  p = FUNC2(s);
  pend = FUNC2(s) + FUNC1(s);
  while (p < pend) {
    if (FUNC0(*p)) {
      *p = FUNC3(*p);
      modify = TRUE;
    }
    p++;
  }

  if (modify) return str;
  return FUNC4();
}