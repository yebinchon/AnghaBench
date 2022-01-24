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
struct TYPE_2__ {int /*<<< orphan*/  speed; int /*<<< orphan*/  val; int /*<<< orphan*/  sat; int /*<<< orphan*/  hue; int /*<<< orphan*/  mode; int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 TYPE_1__ rgblight_config ; 

void FUNC1(void) {
  FUNC0("rgblight_config eprom\n");
  FUNC0("rgblight_config.enable = %d\n", rgblight_config.enable);
  FUNC0("rghlight_config.mode = %d\n", rgblight_config.mode);
  FUNC0("rgblight_config.hue = %d\n", rgblight_config.hue);
  FUNC0("rgblight_config.sat = %d\n", rgblight_config.sat);
  FUNC0("rgblight_config.val = %d\n", rgblight_config.val);
  FUNC0("rgblight_config.speed = %d\n", rgblight_config.speed);
}