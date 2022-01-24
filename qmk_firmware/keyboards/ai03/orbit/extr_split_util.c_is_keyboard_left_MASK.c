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
 int /*<<< orphan*/  EECONFIG_HANDEDNESS ; 
 int /*<<< orphan*/  SPLIT_HAND_PIN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((weak))
bool FUNC4(void) {
  #ifdef SPLIT_HAND_PIN
    // Test pin SPLIT_HAND_PIN for High/Low, if low it's right hand
    setPinInput(SPLIT_HAND_PIN);
    return readPin(SPLIT_HAND_PIN);
  #else
    #ifdef EE_HANDS
      return eeprom_read_byte(EECONFIG_HANDEDNESS);
    #else
      #ifdef MASTER_RIGHT
        return !is_keyboard_master();
      #else
        return FUNC1();
      #endif
    #endif
  #endif
}