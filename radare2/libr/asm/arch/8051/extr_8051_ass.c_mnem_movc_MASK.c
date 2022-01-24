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
 scalar_t__ FUNC0 (char const* const,char*) ; 
 int FUNC1 (int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (char const* const,char*) ; 

__attribute__((used)) static bool FUNC3(char const*const*arg, ut16 pc, ut8**out) {
	if (FUNC0 (arg[0], "a")) {
		return false;
	}
	if (!FUNC2 (arg[1], "@a+dptr")
		|| !FUNC2 (arg[1], "[a+dptr]")) {
		return FUNC1 (0x93, out);
	}
	if (!FUNC2 (arg[1], "@a+pc")
		|| !FUNC2 (arg[1], "[a+pc]")) {
		return FUNC1 (0x83, out);
	}
	return false;
}