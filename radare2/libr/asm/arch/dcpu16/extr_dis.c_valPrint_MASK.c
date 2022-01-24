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
typedef  short ut16 ;

/* Variables and functions */
 char** regs ; 
 int FUNC0 (char*,char*,...) ; 

__attribute__((used)) static int FUNC1(char *out, ut8 type, ut16 value) {
	if (type <= 0x07) return FUNC0(out, "%s", regs[type]);
	if (type <= 0x0f) return FUNC0(out, "[%s]", regs[type - 0x08]);
	if (type <= 0x17) return FUNC0(out, "[%s + %#hx]", regs[type - 0x10], value);
	if (type <= 0x1d) return FUNC0(out, "%s", regs[type - 0x18 + 0x08]);
	if (type == 0x1e) return FUNC0(out, "[%#hx]", value);
	if (type == 0x1f) return FUNC0(out, "%#hx", value);
	return FUNC0(out, "%#hx", (short)(type - 0x20));
}