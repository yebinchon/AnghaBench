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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int const) ; 

__attribute__((used)) static inline void
FUNC1 (int boolean, const char *file, const int line)
{
  if (! boolean)
    FUNC0 ("Assertion failed at %s:%d\n", file, line);
}