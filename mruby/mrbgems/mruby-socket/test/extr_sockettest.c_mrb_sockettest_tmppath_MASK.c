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

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (char*) ; 

mrb_value
FUNC5(mrb_state *mrb, mrb_value klass)
{
  char name[] = "mruby-socket.XXXXXXXX";
  int fd = FUNC1(name);
  if (fd == -1) {
    FUNC3(mrb, 0);
  }
  if (FUNC0(fd) == -1) {
    FUNC3(mrb, 0);
  }
  if (FUNC4(name) == -1) {
    FUNC3(mrb, 0);
  }
  return FUNC2(mrb, name);
}