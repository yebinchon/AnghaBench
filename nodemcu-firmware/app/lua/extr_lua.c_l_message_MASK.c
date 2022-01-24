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

/* Variables and functions */
 int /*<<< orphan*/  c_stderr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static void FUNC3 (const char *pname, const char *msg) {
#if defined(LUA_USE_STDIO)
  if (pname) fprintf(c_stderr, "%s: ", pname);
  fprintf(c_stderr, "%s\n", msg);
  fflush(c_stderr);
#else
  if (pname) FUNC2("%s: ", pname);
  FUNC2("%s\n", msg);
#endif
}