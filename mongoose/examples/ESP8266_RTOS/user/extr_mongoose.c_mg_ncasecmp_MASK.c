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
 int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(const char *s1, const char *s2, size_t len) {
  int diff = 0;

  if (len > 0) do {
      diff = FUNC0(s1++) - FUNC0(s2++);
    } while (diff == 0 && s1[-1] != '\0' && --len > 0);

  return diff;
}