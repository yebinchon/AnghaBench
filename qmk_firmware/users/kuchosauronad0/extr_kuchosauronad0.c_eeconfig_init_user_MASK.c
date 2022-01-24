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
struct TYPE_2__ {int rgb_layer_change; scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  EECONFIG_UNICODEMODE ; 
 int /*<<< orphan*/  KUCHOSAURONAD0_UNICODE_MODE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__ userspace_config ; 

void FUNC6(void) {
  userspace_config.raw = 0;
  userspace_config.rgb_layer_change = true;
  FUNC1(userspace_config.raw);
  #if (defined(UNICODE_ENABLE) || defined(UNICODEMAP_ENABLE) || defined(UCIS_ENABLE))
    set_unicode_input_mode(KUCHOSAURONAD0_UNICODE_MODE);
    get_unicode_input_mode();
  #else
    FUNC2(EECONFIG_UNICODEMODE, KUCHOSAURONAD0_UNICODE_MODE);
  #endif
  FUNC0();
  FUNC4();
}