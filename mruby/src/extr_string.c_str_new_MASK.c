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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  E_ARGUMENT_ERROR ; 
 size_t MRB_INT_MAX ; 
 scalar_t__ FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (char const*) ; 
 struct RString* FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 struct RString* FUNC5 (int /*<<< orphan*/ ,char const*,size_t) ; 
 struct RString* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,size_t) ; 

__attribute__((used)) static struct RString*
FUNC7(mrb_state *mrb, const char *p, size_t len)
{
  if (FUNC0(len)) {
    return FUNC4(FUNC1(mrb), p, len);
  }
  if (len >= MRB_INT_MAX) {
    FUNC2(mrb, E_ARGUMENT_ERROR, "string size too big");
  }
  if (p && FUNC3(p)) {
    return FUNC5(FUNC1(mrb), p, len);
  }
  return FUNC6(mrb, FUNC1(mrb), p, len);
}