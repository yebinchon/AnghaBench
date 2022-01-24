#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct TYPE_2__ {int hue; int /*<<< orphan*/  val; int /*<<< orphan*/  sat; } ;

/* Variables and functions */
 int RGBLIGHT_HUE_STEP ; 
 TYPE_1__ rgblight_config ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC1(void) {
  uint16_t hue;
  hue = (rgblight_config.hue+RGBLIGHT_HUE_STEP) % 360;
  FUNC0(hue, rgblight_config.sat, rgblight_config.val);
}