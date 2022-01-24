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
 int /*<<< orphan*/  HSV_BLUE ; 
 int /*<<< orphan*/  HSV_GREEN ; 
 int /*<<< orphan*/  HSV_RED ; 
 int /*<<< orphan*/  HSV_YELLOW ; 
 scalar_t__ SINGLE_HOLD ; 
 scalar_t__ S_COLEMAK ; 
 scalar_t__ S_CRUSSIAN ; 
 scalar_t__ S_ENGLISH ; 
 scalar_t__ S_QRUSSIAN ; 
 scalar_t__ l_state ; 
 scalar_t__ rgb ; 
 int /*<<< orphan*/  FUNC0 (int,...) ; 
 scalar_t__ td_state ; 

void FUNC1(void) {
  if (rgb>0) return;
  if (td_state == SINGLE_HOLD) FUNC0(HSV_BLUE);
  else {
    if (l_state == S_ENGLISH) FUNC0(HSV_RED);
    if (l_state == S_QRUSSIAN) FUNC0(HSV_GREEN);
    if (l_state == S_COLEMAK) FUNC0(HSV_YELLOW);
    if (l_state == S_CRUSSIAN) FUNC0(85, 100, 100);
  }
}