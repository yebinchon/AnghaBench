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
 int /*<<< orphan*/  cury ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(char board[20][10]) {
  int cleared_lines = 0;
  for (int y = 19; y >= 0; y--) {
    char isfull = 1;
    for (int x = 0; x < 10; x++) {
      if (!board[y][x]) {
        isfull = 0;
      }
    }
    if (isfull) {
      // delete clear line
      FUNC2(12, y);
      FUNC1(12); // delete line contents
      // delete newline
      FUNC3();
      cury--;
      curx = 12;
      cleared_lines++;
    } else {
      if (cleared_lines > 0) {
        // move cleared lines down on board
        for (int x = 0; x < 10; x++) {
          board[y + cleared_lines][x] = board[y][x];
        }
      }
    }
  }
  // clear cleared top lines
  for (int y = 0; y < cleared_lines; y++) {
    for (int x = 0; x < 10; x++) {
      board[y][x] = 0;
    }
  }
  if (cleared_lines > 0) {
    FUNC2(0, 0);
    for (int i = 0; i < cleared_lines; i++) {
      FUNC0();
      curx = 0;
      cury++;
    }
  }
  return cleared_lines;
}