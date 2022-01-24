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
typedef  int ut8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(const ut8 *c, int len, int ule, int rad) {
	int i;
	if (ule) {
		for (i = len - 1; i >= 0; i--) {
			FUNC0 ("%02x", c[i]);
		}
	} else {
		for (i = 0; i < len; i++) {
			FUNC0 ("%02x", c[i]);
		}
	}
	if (rad != 'j') {
		FUNC0 ("\n");
	}
}