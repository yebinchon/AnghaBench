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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int /*<<< orphan*/  ut16 ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,char const* const) ; 
 int FUNC1 (int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static bool FUNC2(char const*const*arg, ut16 pc, ut8**out) {
	if (FUNC0  ("ab", arg[0])) {
		return false;
	}
	return FUNC1 (0x84, out);
}