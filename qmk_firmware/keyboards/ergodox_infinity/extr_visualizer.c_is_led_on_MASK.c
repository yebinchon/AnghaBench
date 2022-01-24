#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {unsigned int led_on; } ;
typedef  TYPE_1__ visualizer_user_data_t ;
typedef  unsigned int uint8_t ;

/* Variables and functions */

__attribute__((used)) static inline bool FUNC0(visualizer_user_data_t* user_data, uint8_t num) {
    return user_data->led_on & (1u << num);
}