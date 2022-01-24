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
 int /*<<< orphan*/ * FUNC0 (char*,int) ; 
 int MAXPATHLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (char*,int) ; 

mrb_value
FUNC5(mrb_state *mrb, mrb_value klass)
{
  mrb_value path;
  char buf[MAXPATHLEN], *utf8;

  if (FUNC0(buf, MAXPATHLEN) == NULL) {
    FUNC2(mrb, "getcwd(2)");
  }
  utf8 = FUNC4(buf, -1);
  path = FUNC1(mrb, utf8);
  FUNC3(utf8);
  return path;
}