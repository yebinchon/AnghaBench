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
typedef  scalar_t__ uint16_t ;
typedef  int /*<<< orphan*/  keyrecord_t ;

/* Variables and functions */
 int /*<<< orphan*/  DYN ; 
 scalar_t__ DYN_REC_STOP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

bool FUNC2(uint16_t keycode, keyrecord_t *record) {
  uint16_t macro_kc = (keycode == FUNC0(DYN) ? DYN_REC_STOP : keycode);
  
  if (!FUNC1(macro_kc, record)) {
      return false;
  }

  return true;
}