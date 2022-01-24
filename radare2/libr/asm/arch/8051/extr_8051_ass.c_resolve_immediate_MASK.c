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
typedef  int /*<<< orphan*/  ut16 ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC1(char const* imm_str, ut16* imm_out) {
	// rasm2 resolves symbols, so does this really only need to parse hex?
	// maybe TODO: skip leading '#' if exists?
	return FUNC0 (imm_str, imm_out);
}