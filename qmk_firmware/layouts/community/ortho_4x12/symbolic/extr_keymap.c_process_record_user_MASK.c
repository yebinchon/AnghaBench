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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
#define  L_LOWER 131 
#define  L_RAISE 130 
 int FUNC0 (int /*<<< orphan*/ *,int*,int) ; 
#define  R_LOWER 129 
#define  R_RAISE 128 
 int FUNC1 (int /*<<< orphan*/ *,int*,int) ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {

  static bool l_lower = false;
  static bool r_lower = false;

  static bool l_raise = false;
  static bool r_raise = false;

  switch (keycode) {


    case L_LOWER : return FUNC0( record, &l_lower, r_lower ); break;
    case R_LOWER : return FUNC0( record, &r_lower, l_lower ); break;
    case L_RAISE : return FUNC1( record, &l_raise, r_raise ); break;
    case R_RAISE : return FUNC1( record, &r_raise, l_raise ); break;

    default: break;

  }
  return true;
}