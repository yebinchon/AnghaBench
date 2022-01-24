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
struct TYPE_2__ {scalar_t__ raw; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOCAJ_UNICODE_MODE ; 
 int /*<<< orphan*/  EECONFIG_UNICODEMODE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_1__ userspace_config ; 

void FUNC4(void) {
  userspace_config.raw = 0;
  FUNC0(userspace_config.raw);
  #if (defined(UNICODE_ENABLE) || defined(UNICODEMAP_ENABLE) || defined(UCIS_ENABLE))
    set_unicode_input_mode(BOCAJ_UNICODE_MODE);
    get_unicode_input_mode();
  #else
    FUNC1(EECONFIG_UNICODEMODE, BOCAJ_UNICODE_MODE);
  #endif
}