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
 int curx ; 
 int cury ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(char c, const char oldrow[7], const char newrow[7], int x, int y) {
  char str[2] = { c, 0 };
  char row_is_del[7] = { 0 };
  int first = -1;
  int last = -1;
  for (int px = 0; px < 7; px++) {
    if (oldrow[px] && !newrow[px]) {
      row_is_del[px] = 1;
    }
    if (newrow[px] || oldrow[px]) {
      if (first == -1) first = px;
      last = px;
    }
  }

  if (first >= 0) {
    if (curx > x + last + 1) {
      FUNC2(x + last + 1, cury);
    }
    if (curx < x + first) {
      FUNC2(x + first, cury);
    }
    FUNC2(curx, y);
    FUNC1((x + last + 1) - curx);
    FUNC0(curx - (x + first));
    for (int i = first; i <= last; i++) {
      if (row_is_del[i]) {
        FUNC3(".");
      } else {
        FUNC3(str);
      }
      curx++;
    }
  }
}