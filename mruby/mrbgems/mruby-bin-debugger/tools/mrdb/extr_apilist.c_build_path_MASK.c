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
typedef  int /*<<< orphan*/  mrb_state ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int FUNC4 (char const*) ; 

__attribute__((used)) static char*
FUNC5(mrb_state *mrb, const char *dir, const char *base)
{
  int len;
  char *path = NULL;

  len = FUNC4(base) + 1;

  if (FUNC3(dir, ".")) {
    len += FUNC4(dir) + sizeof("/") - 1;
  }

  path = (char*)FUNC1(mrb, len);
  FUNC0(path, 0, len);

  if (FUNC3(dir, ".")) {
    FUNC2(path, dir);
    FUNC2(path, "/");
  }
  FUNC2(path, base);

  return path;
}