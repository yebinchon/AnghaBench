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
 scalar_t__ current0format ; 
 scalar_t__ currentFormat ; 

__attribute__((used)) static void FUNC0(void) {
	current0format--;
	if (current0format < 0) {
		current0format = 0;
	}
	currentFormat = current0format;
}