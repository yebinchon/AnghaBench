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
typedef  size_t ut8 ;

/* Variables and functions */
 size_t FUNC0 (char const* const*) ; 

__attribute__((used)) static const char *FUNC1(ut8 reg) {
	const char * const names[] = {"eax", "ecx", "edx", "ebx", "esp", "ebp", "esi", "edi"};
	return reg < FUNC0 (names) ? names[reg] : "unk";
}