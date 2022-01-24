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
 scalar_t__ FUNC0 (struct RString*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct RString* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static mrb_value
FUNC3(mrb_state *mrb, mrb_value self)
{
  struct RString *s = FUNC2(self);

  return FUNC1(FUNC0(s) == 0);
}