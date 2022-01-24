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
typedef  size_t uint8_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int KC_LALT ; 
 int KC_LCTL ; 
 int KC_LGUI ; 
 int KC_LSFT ; 
 int QK_LALT ; 
 int QK_LCTL ; 
 int QK_LGUI ; 
 int QK_LSFT ; 
 int delay_key_stat ; 
 size_t delay_mat_col ; 
 size_t delay_mat_row ; 
 int delay_registered_code ; 
 int /*<<< orphan*/ *** keymaps ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int tapping_key ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(uint8_t layer){
  if(delay_key_stat){
    FUNC2();

    uint16_t code = FUNC0(&(keymaps[layer][delay_mat_row][delay_mat_col]));
    if (code & QK_LSFT){
      FUNC1(KC_LSFT);
    }
    if (code & QK_LCTL){
      FUNC1(KC_LCTL);
    }
    if (code & QK_LALT){
      FUNC1(KC_LALT);
    }
    if (code & QK_LGUI){
      FUNC1(KC_LGUI);
    }
    FUNC1(code);
    delay_registered_code = code;
    delay_key_stat = false;
    tapping_key = true;
  }
}