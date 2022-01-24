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
typedef  int /*<<< orphan*/  matrix_row_t ;

/* Variables and functions */
 int /*<<< orphan*/  B4 ; 
 int /*<<< orphan*/  B5 ; 
 int /*<<< orphan*/  B6 ; 
 int /*<<< orphan*/  B7 ; 
 int /*<<< orphan*/  C6 ; 
 int /*<<< orphan*/  C7 ; 
 int /*<<< orphan*/  D2 ; 
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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  matrix ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

void FUNC8(void) {

  FUNC1();

  //Motor enable
  FUNC5(E6);
  //Motor PWM
  FUNC5(D7);

  //Power LED
  FUNC5(B7);
  FUNC7(B7);

  //LEDs Columns
  FUNC5(F7);
  FUNC5(F6);
  FUNC5(F5);
  FUNC5(F4);
  FUNC5(F1);
  FUNC5(F0);

  //LEDs Rows
  FUNC5(D6);
  FUNC5(B4);
  FUNC5(B5);
  FUNC5(B6);
  FUNC5(C6);
  FUNC5(C7);

  //Capacitive Interrupt
  FUNC4(D2);

  FUNC0();
  FUNC6(0x06, 0x12); //Calibrate capacitive touch IC

  FUNC3(matrix, 0, MATRIX_ROWS * sizeof(matrix_row_t));

  FUNC2();
}