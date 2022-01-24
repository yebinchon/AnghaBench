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
typedef  size_t uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/  keys; } ;

/* Variables and functions */
 size_t CB_SUPERDUPER ; 
 int /*<<< orphan*/  EECONFIG_SUPERDUPER_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 TYPE_1__* key_combos ; 
 int /*<<< orphan*/ * superduper_combos ; 

void FUNC1(uint16_t layer) {
    key_combos[CB_SUPERDUPER].keys = superduper_combos[layer];
    FUNC0(EECONFIG_SUPERDUPER_INDEX, layer);
}