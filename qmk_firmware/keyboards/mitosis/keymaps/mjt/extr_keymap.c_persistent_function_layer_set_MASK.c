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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  function_layer ; 

void FUNC0(uint16_t new_function_layer) {
  // eeconfig_update_function_layer(new_function_layer);
  function_layer = new_function_layer;
  // should clear layers to avoid getting stuck.
}