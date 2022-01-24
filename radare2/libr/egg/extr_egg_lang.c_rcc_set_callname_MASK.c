#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pushargs; int /*<<< orphan*/  callname; scalar_t__ nargs; } ;
struct TYPE_5__ {TYPE_1__ lang; } ;
typedef  TYPE_2__ REgg ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(REgg *egg, const char *s) {
	FUNC0 (egg->lang.callname);
	egg->lang.nargs = 0;
	egg->lang.callname = FUNC4 (FUNC3 (FUNC1 (s)));
	egg->lang.pushargs = !((!FUNC2 (s, "goto")) || (!FUNC2 (s, "break")));
}