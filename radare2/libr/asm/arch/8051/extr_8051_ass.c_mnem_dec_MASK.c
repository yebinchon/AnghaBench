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
 scalar_t__ FUNC0 (char const* const) ; 
 scalar_t__ FUNC1 (char const* const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const* const) ; 
 int FUNC3 (int,int /*<<< orphan*/ **) ; 
 int FUNC4 (int,char const* const,int /*<<< orphan*/ **) ; 
 int FUNC5 (int,char const* const,int /*<<< orphan*/ **) ; 

__attribute__((used)) static bool FUNC6(char const*const*arg, ut16 pc, ut8**out) {
	if (FUNC0 (arg[0])) {
		return FUNC5 (0x16, arg[0], out);
	}
	if (FUNC1 (arg[0])) {
		return FUNC5 (0x18, arg[0], out);
	}
	if (!FUNC2 ("a", arg[0])) {
		return FUNC3 (0x14, out);
	}
	return FUNC4 (0x15, arg[0], out);
}