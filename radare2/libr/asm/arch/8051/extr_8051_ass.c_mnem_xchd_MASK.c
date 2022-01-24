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
 int /*<<< orphan*/  FUNC0 (char const* const) ; 
 scalar_t__ FUNC1 (char const* const,char*) ; 
 int FUNC2 (int,char const* const,int /*<<< orphan*/ **) ; 

__attribute__((used)) static bool FUNC3(char const*const*arg, ut16 pc, ut8**out) {
	if (FUNC1 (arg[0], "a")) {
		return false;
	}
	if (!FUNC0 (arg[1])) {
		return false;
	}
	return FUNC2 (0xd6, arg[1], out);
}