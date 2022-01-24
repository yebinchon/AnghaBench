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
 int KC_LALT ; 
 int KC_LCTL ; 
 int KC_LGUI ; 
 int KC_LSFT ; 
 int QK_LALT ; 
 int QK_LCTL ; 
 int QK_LGUI ; 
 int QK_LSFT ; 
 int delay_registered_code ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

void FUNC1(void){
  if(delay_registered_code){
    FUNC0(delay_registered_code);
    if (delay_registered_code & QK_LSFT){
      FUNC0(KC_LSFT);
    }
    if (delay_registered_code & QK_LCTL){
      FUNC0(KC_LCTL);
    }
    if (delay_registered_code & QK_LALT){
      FUNC0(KC_LALT);
    }
    if (delay_registered_code & QK_LGUI){
      FUNC0(KC_LGUI);
    }
    delay_registered_code=0;
  }
}