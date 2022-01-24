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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
#define  _OVERWATCH 128 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 

uint32_t FUNC11(uint32_t state) {
  uint8_t layer = FUNC0(state);

  FUNC4();
  FUNC5();
  FUNC7();
  FUNC9();

  FUNC3(); // by default, enable combos.
  switch (layer) {
    case 0:
      break;
    case 1:
      FUNC1();
      FUNC6();
      break;
    case 2:
      FUNC1();
      FUNC8();
      break;
    case _OVERWATCH:
      FUNC1();
      FUNC2(); // We don't want combos in overwatch
      FUNC10();
      break;
    case 4:
      FUNC6();
      FUNC8();
      break;
    case 5:
      FUNC6();
      FUNC10();
      break;
    case 6:
      FUNC8();
      FUNC10();
      break;
    case 7:
      FUNC6();
      FUNC8();
      FUNC10();
      break;
    default:
      break;
  }
  return state;
}