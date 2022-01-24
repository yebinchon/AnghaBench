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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  board ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int down_delay ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  empty_piece ; 
 scalar_t__ first_run ; 
 int game_over ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int FUNC8 (int) ; 
 scalar_t__ next_down ; 
 int /*<<< orphan*/  piece ; 
 int r ; 
 int rotation ; 
 int score ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 int shape ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  temp_piece ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 scalar_t__ time ; 
 int x ; 
 int y ; 

int FUNC15(int ms_since_previous_tick) {
  if (game_over) {
    return 0;
  }
      
  time += ms_since_previous_tick;
  
  if (first_run || time > next_down) {
    if (first_run || FUNC7(board, piece, x, y + 1)) {
      first_run = 0;
      FUNC0(piece, board, x, y);

      score += FUNC1(board);

      down_delay = 500 - score * 10;
      if (down_delay < 100) {
        down_delay = 100;
      }
        
      rotation = 0;
      shape = r % 7;
      r = FUNC8(r);
      FUNC10(piece, shape, rotation);
      
      x = 1;
      y = - FUNC5(piece);
      FUNC4(FUNC6(shape), 1 + x, y, piece, 0, 0);

      if (FUNC7(board, piece, x, y)) {
        game_over = 1;
        FUNC9(12, 10);
        FUNC14(" game over");
        FUNC13();
        FUNC14(" score ");
        char tmp[10];
        FUNC11(tmp, "%d", score);
        FUNC14(tmp);
        return 0;
      }
    } else {
      y++;
      FUNC4(FUNC6(shape), 1 + x, y, piece, 0, +1);
    }
    next_down = time + down_delay;
  } else {
      
    switch (FUNC12()) {
    case 1: { // up
      int oldrotation = rotation;
      rotation = (rotation + 1) % 4;
      FUNC2(piece, temp_piece);
      FUNC10(piece, shape, rotation);
      if (FUNC7(board, piece, x, y)) {
        rotation = oldrotation;
        FUNC10(piece, shape, rotation);
      } else {
        FUNC3(FUNC6(shape), 1 + x, y, temp_piece, piece);
      }
      break;
    }
    case 2: // left
      if (!FUNC7(board, piece, x - 1, y)) {
        x--;
        FUNC4(FUNC6(shape), 1 + x, y, piece, -1, 0);
      }
      break;
    case 3: {// down
      int starty = y;
      while (!FUNC7(board, piece, x, y + 1)) {
        y++;
      }

      FUNC3(FUNC6(shape), x + 1, starty, piece, empty_piece);
      FUNC3(FUNC6(shape), x + 1, y, empty_piece, piece);

      next_down = time + down_delay;
      break;
    }
    case 4: // right
      if (!FUNC7(board, piece, x + 1, y)) {
        x++;
        FUNC4(FUNC6(shape), 1 + x, y, piece, 1, 0);
      }
      break;
    }
  }
  return 1;
}