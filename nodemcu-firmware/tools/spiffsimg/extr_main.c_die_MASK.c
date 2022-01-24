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
 char** delete_list ; 
 scalar_t__ delete_on_die ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4 (const char *what)
{
  if (errno == 0) {
    FUNC1(stderr, "%s: fatal error\n", what);
  } else {
    FUNC2 (what);
  }
  if (delete_on_die) {
    const char **p = delete_list;
    while (*p) {
      FUNC3(*p);
      p++;
    }
  }
  FUNC0 (1);
}