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
 char FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static char*
FUNC2(char *str, int base)
{
  char *t;

  t = str;
  if (base == 16) {
    while (*t == 'f') {
      t++;
    }
  }
  else if (base == 8) {
    *t |= FUNC0(3, FUNC1(t));
    while (*t == '7') {
      t++;
    }
  }
  else if (base == 2) {
    while (*t == '1') {
      t++;
    }
  }

  return t;
}