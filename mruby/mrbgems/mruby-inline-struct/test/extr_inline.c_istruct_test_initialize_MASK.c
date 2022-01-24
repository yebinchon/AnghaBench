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
typedef  int /*<<< orphan*/  mrb_value ;
typedef  int /*<<< orphan*/  mrb_state ;
typedef  int mrb_int ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 

__attribute__((used)) static mrb_value
FUNC7(mrb_state *mrb, mrb_value self)
{
  char *string = (char*)FUNC3(self);
  mrb_int size = FUNC4();
  mrb_value object;
  FUNC2(mrb, "o", &object);

  if (FUNC0(object)) {
    FUNC6(string, "fixnum", size-1);
  }
#ifndef MRB_WITHOUT_FLOAT
  else if (FUNC1(object)) {
    FUNC6(string, "float", size-1);
  }
#endif
  else if (FUNC5(object)) {
    FUNC6(string, "string", size-1);
  }
  else {
    FUNC6(string, "anything", size-1);
  }

  string[size - 1] = 0; // force NULL at the end
  return self;
}