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
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(char const*reg) {
	if (FUNC1 (reg)) {
		return reg[1] - '0';
	}
	if (FUNC0 (reg)) {
		return reg[2] - '0';
	}
	return 8; // not register 0-7, so...
}