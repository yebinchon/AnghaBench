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
typedef  int uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  matrix_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  B4 ; 
 int /*<<< orphan*/  B5 ; 
 int /*<<< orphan*/  B6 ; 
 int /*<<< orphan*/  C6 ; 
 int /*<<< orphan*/  C7 ; 
 int /*<<< orphan*/  D6 ; 
 int /*<<< orphan*/  D7 ; 
 int /*<<< orphan*/  E6 ; 
 int /*<<< orphan*/  F0 ; 
 int /*<<< orphan*/  F1 ; 
 int /*<<< orphan*/  F4 ; 
 int /*<<< orphan*/  F5 ; 
 int /*<<< orphan*/  F6 ; 
 int /*<<< orphan*/  F7 ; 
 int MATRIX_ROWS ; 
 scalar_t__ VIBRATE_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int*,int*) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/ * matrix ; 
 int FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 () ; 
 scalar_t__ vibrate ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

uint8_t FUNC11(void) {
  if (FUNC2()) {
    uint16_t dataIn = FUNC7();
    if ((dataIn & 0b111100010001) > 0 && (dataIn & 0b000011101110) > 0) {
      uint8_t column = 10, row = 10;
      FUNC1(dataIn, &column, &row);
      if (column != 10 && row != 10) {
        vibrate = VIBRATE_LENGTH; //Trigger vibration
        matrix[row] = FUNC0(column);
      } else {
        FUNC5(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
      }
    } else {
      FUNC5(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));
    }
    FUNC6();
  }

  for (uint8_t c = 0; c < 6; c++) {
    for (uint8_t r = 0; r < 6; r++) {
      switch (r) {
        case 0: FUNC8(D6, FUNC3(r, c)); break;
        case 1: FUNC8(B4, FUNC3(r, c)); break;
        case 2: FUNC8(B5, FUNC3(r, c)); break;
        case 3: FUNC8(B6, FUNC3(r, c)); break;
        case 4: FUNC8(C6, FUNC3(r, c)); break;
        case 5: FUNC8(C7, FUNC3(r, c)); break;
      }

      switch (c) {
        case 0: FUNC8(F5, !FUNC3(r, c)); break;
        case 1: FUNC8(F4, !FUNC3(r, c)); break;
        case 2: FUNC8(F1, !FUNC3(r, c)); break;
        case 3: FUNC8(F0, !FUNC3(r, c)); break;
        case 4: FUNC8(F6, !FUNC3(r, c)); break;
        case 5: FUNC8(F7, !FUNC3(r, c)); break;
      }
    }
  }

  if (vibrate == VIBRATE_LENGTH) {
    FUNC9(E6);
    FUNC9(D7);
    vibrate--;
  }  else if (vibrate > 0) {
    vibrate--;
  } else if (vibrate == 0) {
    FUNC10(D7);
    FUNC10(E6);
  }

  FUNC4();

  return 1;

}